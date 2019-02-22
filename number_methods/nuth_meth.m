function [root] = nuth_meth(a, b, f, iter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %a = -10; b = 10;
    m = 50; x = linspace(a, b, m);
    h = 0.001; %iter = 10; 
    eps = 0.001;
    %f = @(x) 1 + x.*sin(x);
    %f = @(x) 10.*(x - 3).*(x+6).*(x - 10);
    y = f(x);
    F = plot(x,y,x,0*x,':'); grid on
    xlabel('x'); ylabel('y')
    hold on
    set(F, 'LineWidth', 1.25);
    ymin = min(y); ymax = max(y);
    if ymin < 0 
        ymin = 1.1*ymin; 
    else
        ymin = 0.9*ymin; 
    end
    if ymax > 0 
        ymax = 1.1*ymax; 
    else
        ymax = 0.9*ymax; 
    end
    ylim([ymin, ymax]);
    z = ginput(1);
    x1 = z(1);
    for i = 1 : iter
        yh = (f(x1 + h) - f(x1))/h;
        x2 = x1 - f(x1)/yh;
        P = plot(x,f(x1) + yh*(x - x1),'--g',x1,f(x1),'*',x2,0,'*', 'LineWidth', 1.1, 'MarkerSize',1);
        M = plot(x2, f(x2),'o', 'MarkerSize', 10);
        L = line([x2, x2],[0,f(x2)]);
        set(L, 'LineStyle',':');
        set(P, 'LineWidth', 1.1);
        x1 = x2;
        if abs(f(x2)) < eps
            break;
        end

        %pause
    end
    root = x2;
    sprintf('%s','End Iteration, press button to exit')
    hold off
    pause
    close
end

