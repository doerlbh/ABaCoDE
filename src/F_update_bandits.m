%% Function: update bandits posterior distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% 
% [B_k,g_k,hat_mu_k,B_p,g_p,hmp,n,r] = F_update_bandits(type,t,by,reward,decision,C,W,Z,B_k,g_k,hat_mu_k,B_p,g_p,hmp,n,r)

function [Bk,gk,hmk,Bp,gp,hmp,Bf,gf,hmf,n,r] = F_update_bandits(isGPU,type,t,by,reward,decision,C,W,Z,Bk,gk,hmk,Bp,gp,hmp,Bf,gf,hmf,n,r)

Bp(:,:,decision) = Bp(:,:,decision) + Z.'*Z;
gp(decision,:) = gp(decision,:) + reward*Z;
% hmp(decision,:) = g_p(decision,:)*inv(B_p(:,:,decision));

switch type
    case {'minibatch_history_CB','full_history_CB'}
        k = mat2vec(isGPU,W,length(W));
        Bk(:,:,k) = Bk(:,:,k) + C.'*C;
        gk(k,:) = gk(k,:) + reward*C;
        % hat_mu_k(k,:) = g_k(k,:)*inv(B_k(:,:,k));
        if mod(t,by) == 0
            for k=1:length(W)
                hmk(k,:) = gk(k,:)*inv(Bk(:,:,k));
            end
            for d = 1:size(Bp,3)
                hmp(d,:) = gp(d,:)*inv(Bp(:,:,d));
            end
        end
    case {'multimode_minibatch_history_CB','multimode_full_history_CB'}
        k = mat2vec(isGPU,W,length(W));
        Bf(:,:,k) = Bf(:,:,k) + C.'*C;
        gf(k,:) = gf(k,:) + reward*C;
        if mod(t,by) == 0
            for k=1:length(W)
                hmf(k,:) = gf(k,:)*inv(Bf(:,:,k));
            end
            for d = 1:size(Bp,3)
                hmp(d,:) = gp(d,:)*inv(Bp(:,:,d));
            end
        end
    otherwise
        if mod(t,by) == 0
            for d = 1:size(Bp,3)
                hmp(d,:) = gp(d,:)*inv(Bp(:,:,d));
            end
        end
end

r(:,decision) = r(:,decision)+reward*W.';

end