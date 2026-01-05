clc; clear; close all;

% 创建一个 Alpha-Beta 滤波器对象
filter = AlphaBetaFilter(0.85, 0.05);

% 模拟几次更新（和 C++ 里的例子对应）
dt = 1.0;
z_list = 5:5:100;   % 几次测量位置

x_est_list  = zeros(size(z_list));
vx_est_list = zeros(size(z_list));
i = 1:numel(z_list);
for k = 1:numel(z_list)
    z = z_list(k);
    filter = filter.update(z, dt);      % 记得接回返回值
    
    x_est_list(k)  = filter.getEstimate();
    vx_est_list(k) = filter.getEstimateVelocity();
    
    fprintf('k=%d, z=%.2f, x_est=%.2f, v_est=%.4f\n', ...
        k, z, x_est_list(k), vx_est_list(k));
end

% 打印最终结果
%fprintf('\nFinal Estimated Value: %.3f\n', filter.getEstimate());
%fprintf('Final Estimated Velocity: %.6f\n', filter.getEstimateVelocity());
%plot(i,x_est_list(i),i,z_list(i))
plot(i,vx_est_list(i),i,5*ones(size(i)))