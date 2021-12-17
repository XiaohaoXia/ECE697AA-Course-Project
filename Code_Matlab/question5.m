plot(x,t(2,:),"r")
hold on 
plot(x,t(3,:),"g")
axis([0 24 4.1 4.102])
xlabel("iteration")
ylabel("reward")
legend("Q-learn","Double deep Q-learn")
