doors = 1:3


switch_win_vec = c()
noswitch_win_vec = c()

switch_win_percentage = c()
noswitch_win_percentage = c()

for(ii in 1:200){
  # max's pick
  door_max = 1
  
  # put car behind door
  door_car = sample(doors,1)
  
  # monty's door reveal
  if(door_car==1){ door_monty = sample(c(2,3),1) }
  if(door_car!=1){ door_monty = doors[c(-door_max,-door_car)] }
  
  # switch or not?
  switch_door = doors[c(-door_max,-door_monty)]
  noswitch = 1
  
  # check if you won
  switch_win = ( switch_door==door_car )
  noswitch_win = ( noswitch==door_car )
  
  # collect the wins
  switch_win_vec = c(switch_win_vec,switch_win)
  noswitch_win_vec = c(noswitch_win_vec,noswitch_win)
  
  # win percentage
  switch_win_percentage = c(switch_win_percentage,mean(switch_win_vec))
  noswitch_win_percentage = c(noswitch_win_percentage,mean(noswitch_win_vec))
}

plot(switch_win_percentage,type="l",col="blue",ylim=c(0,1),xlab="number of games")
abline(h=2/3,col="darkgreen",lty=2)
lines(noswitch_win_percentage,col="red")
abline(h=1/3,col="darkred",lty=2)
