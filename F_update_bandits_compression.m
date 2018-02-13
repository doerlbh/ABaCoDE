%% Function: update bandits posterior distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% function [Bk,gk,hmk,Bp,gp,hmp,n,r] = F_update_bandits_compression(isGPU,type,t,by,reward_k,reward_p,decision,C,W,Z,Bk,gk,hmk,Bp,gp,hmp,n,r,emb)

function [Bk,gk,hmk,Bp,gp,hmp,n,r] = F_update_bandits_compression(isGPU,type,t,by,reward_k,reward_p,decision,C,W,Z,Bk,gk,hmk,Bp,gp,hmp,n,r,emb)

Bp(:,:,decision) = Bp(:,:,decision) + Z.'*Z;

% reward_p
% size(reward_p)
% size(Z)
% size(gp(decision,:))
% reward_p * Z

gp(decision,:) = gp(decision,:) + reward_p*Z;
% hmp(decision,:) = g_p(decision,:)*inv(B_p(:,:,decision));

if strcmp(type, 'baseline')
    if mod(t,by) == 0
        for d = 1:size(Bp,3)
            hmp(d,:) = gp(d,:)*inv(Bp(:,:,d));
        end
    end
else
    k = mat2vec(isGPU,W,length(W));
    % k = emb;
    Bk(:,:,k) = Bk(:,:,k) + C.'*C;
    gk(k,:) = gk(k,:) + reward_k*C;
    % hat_mu_k(k,:) = g_k(k,:)*inv(B_k(:,:,k));
    if mod(t,by) == 0
        for k=1:length(W)
            hmk(k,:) = gk(k,:)*inv(Bk(:,:,k));
        end
        for d = 1:size(Bp,3)
            hmp(d,:) = gp(d,:)*inv(Bp(:,:,d));
        end
    end
end

r(:,decision) = r(:,decision)+reward_p*W.';

end