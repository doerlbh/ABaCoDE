%% Function: update bandits posterior distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% 
% [B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r] = K_update_bandits(type,t,by,reward,decision,C,W,Z,B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r)

function [B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r] = K_update_bandits(type,t,by,reward,decision,C,W,Z,B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r)

B_p(:,:,decision) = B_p(:,:,decision) + Z.'*Z;
g_p(decision,:) = g_p(decision,:) + reward*Z;
% hat_mu_p(decision,:) = g_p(decision,:)*inv(B_p(:,:,decision));

switch type
    case {'cluster_offline_MAB','cluster_online_MAB'}
        k = mat2vec(W, length(W));
        B_k(:,:,k) = B_k(:,:,k) + C.'*C;
        g_k(k,:) = g_k(k,:) + reward*C;
        % hat_mu_k(k,:) = g_k(k,:)*inv(B_k(:,:,k));
        if mod(t,by) == 0
            for k=1:length(W)
                hat_mu_k(k,:) = g_k(k,:)*inv(B_k(:,:,k));
            end
            for d = 1:size(B_p,3)
                hat_mu_p(d,:) = g_p(d,:)*inv(B_p(:,:,d));
            end
        end
    otherwise
        if mod(t,by) == 0
            for d = 1:size(B_p,3)
                hat_mu_p(d,:) = g_p(d,:)*inv(B_p(:,:,d));
            end
        end
end

r(:,decision) = r(:,decision)+reward*W.';

end