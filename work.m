
function [velocityInPQW, rangeInPQW] = work(semimajor_axis, eccentricity, true_anomaly)
% input, output 의 단위는 km, deg로 통일한다
mu=3.986*10^14;%[m^3/s^2]
semimajor_axis=input('enter=')
eccentricity=input('enter=')
true_anomaly=input('enter=')

    function r =work2(semimajor_axis, eccentricity, true_anomaly)
        r=semimajor_axis/(1+eccentricity*cos(true_anomaly));
    end

    function k= work3(mu,semimajor_axis)
        k=sqrt(mu/semimajor_axis);
    end
k=work3(mu,semimajor_axis);
r=work2(semimajor_axis, eccentricity, true_anomaly);


velocityInPQW = k*[-sin(true_anomaly); eccentricity+cos(true_anomaly); 0];

rangeInPQW=[r*cos(true_anomaly); r*sin(true_anomaly); 0];

end


 