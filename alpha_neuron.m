% Fire a neuron via alpha function synapse and random input spike train
% (adapted from) R Rao Sep 1999  
%
%a.  Change the values for the membrane's resistance and capacitance (R and C), 
%    and find out how this influences the response of the membrane. Describe the   
%    changes after:
%     i.      multiplying R by 5
%     ii.     multiplying C by 5
%     iii.    multiplying R by 5 AND multiplying C by 5
%
%b. How would you turn the given excitatory synapse into an inhibitory synapse? 


clear
rand('state',0)
t_max= 200; % ms, simulation time period
ref = 0; % refractory period counter


% Generate random input spikes
spike_train = rand(t_max,1);
thr = 0.9; % threshold to generate a spike
spike_train(find(spike_train > thr)) = ones(size((find(spike_train > thr))));
spike_train(find(spike_train < thr)) = zeros(size((find(spike_train < thr))));


% alpha func synaptic conductance
t_a = 100; % Max duration of syn conductance
g_peak = 0.07; % nS (peak synaptic conductance)
t_vec = 0:t_a;
alpha_func = g_peak*t_vec.*(exp(-t_vec));
clf
plot(t_vec(1:80),alpha_func(1:80))
xlabel('t (in ms)')
title('Alpha Function (Synaptic Conductance for Spike at t=0)')
input('Press enter to continue');


% capacitance and leak resistance
C = 0.5 % Capacitance in nF
R = 50 % Resistance in ohms, R = 1/g


% Initialize basic parameters
E_leak = -60; % mV, equilibrium potential
E_syn = 0; % Excitatory synapse (why is this excitatory?)
g_syn = 0; % Current syn conductance
V_th = -45; % Spike threshold mV
V_spike = 50; % Spike value mV
ref_max = 4; % Starting value of ref period counter
V = E_leak; % Set starting membrane voltage
t_list = []; % Initialize empty spike-history
V_trace = [V]; % Initialize membrane voltage-history


clf
subplot(2,1,1)
plot(0:t_max,[0; spike_train])
title('Input spike train')


for t = 1:t_max

   % Compute input
   if (spike_train(t) > 0) % check for input spike
    t_list = [t_list; 1];
   end   
   % Calculate synaptic current due to current and past input spikes
   g_syn = sum(alpha_func(t_list));
   I_syn = g_syn*(E_syn - V); 

   % Update spike times
   if t_list
     t_list = t_list + 1;
     if (t_list(1) == t_a)  % Reached max duration of syn conductance
       t_list = t_list(2:max(size(t_list)));
     end
   end

   % Compute membrane voltage
   if ~ref
     V = V + ( -((V-E_leak)/(R*C)) + (I_syn/C));
   else
     ref = ref - 1;
     V = V_th-10; % reset voltage after spike
   end
   
   % Generate spike
   if (V > V_th)
     V = V_spike;
     ref = ref_max;
   end

   V_trace = [V_trace V];
end


subplot(2,1,2)
plot(0:t_max,V_trace)
drawnow
title('Output spike train')
