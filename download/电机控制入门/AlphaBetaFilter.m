classdef AlphaBetaFilter
    properties
        alpha   % Alpha 参数
        beta    % Beta 参数
        x       % 估计值（位置）
        vx      % 估计速度
    end
    
    methods
        function obj = AlphaBetaFilter(alpha, beta)
            % 构造函数
            if nargin < 2
                error('需要传入 alpha 和 beta 参数');
            end
            obj.alpha = alpha;
            obj.beta  = beta;
            obj.x  = 0.0;
            obj.vx = 0.0;
        end
        
        function obj = update(obj, zmeas, dt)
            % 预测
            x_pred  = obj.x  + obj.vx * dt;
            vx_pred = obj.vx;
            
            % 残差（测量 - 预测）
            residual = zmeas - x_pred;
            
            % 更新
            obj.x  = x_pred  + obj.alpha * residual;
            obj.vx = vx_pred + obj.beta  * residual / dt;
        end
        
        function x_est = getEstimate(obj)
            x_est = obj.x;
        end
        
        function v_est = getEstimateVelocity(obj)
            v_est = obj.vx;
        end
    end
end
