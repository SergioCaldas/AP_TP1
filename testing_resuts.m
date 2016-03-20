stats5 = PARtraveling(5,100);
stats10 = PARtraveling(10,100);
stats20 = PARtraveling(20,100);
stats40 = PARtraveling(40,100);
stats80 = PARtraveling(80,100);
stats100 = PARtraveling(100,100);

average5_sim = mean(stats5(:,1));
average5_sim_itt = mean(stats5(:,2));
average5_rand = mean(stats5(:,3));
average5_rand_itt = mean(stats5(:,4));
test5 = [ average5_sim average5_sim_itt average5_rand average5_rand_itt ];

average10_sim = mean(stats10(:,1));
average10_sim_itt = mean(stats10(:,2));
average10_rand = mean(stats10(:,3));
average10_rand_itt = mean(stats10(:,4));
test10 = [ average10_sim average10_sim_itt average10_rand average10_rand_itt ];

average20_sim = mean(stats20(:,1));
average20_sim_itt = mean(stats20(:,2));
average20_rand = mean(stats20(:,3));
average20_rand_itt = mean(stats20(:,4));
test20 = [ average20_sim average20_sim_itt average20_rand average20_rand_itt ];

average40_sim = mean(stats40(:,1));
average40_sim_itt = mean(stats40(:,2));
average40_rand = mean(stats40(:,3));
average40_rand_itt = mean(stats40(:,4));
test40 = [ average40_sim average40_sim_itt average40_rand average40_rand_itt ];

average80_sim = mean(stats80(:,1));
average80_sim_itt = mean(stats80(:,2));
average80_rand = mean(stats80(:,3));
average80_rand_itt = mean(stats80(:,4));
test80 = [ average80_sim average80_sim_itt average80_rand average80_rand_itt ];

average100_sim = mean(stats100(:,1));
average100_sim_itt = mean(stats100(:,2));
average100_rand = mean(stats100(:,3));
average100_rand_itt = mean(stats100(:,4));
test100 = [ average100_sim average100_sim_itt average100_rand average100_rand_itt ];


table = [ 
    5 test5 ; 
    10 test10; 
    20 test20;
    40 test40;
    80 test80;
    100 test100;
]
