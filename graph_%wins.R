#data preprocessing removing the na values from match_data
#na_match_id<-which(is.na(match_data$match_id))
#na_season<-which(is.na(match_data$season))
#na_winner<-which(is.na(match_data$winner))
matches_csk_played<-which(match_data$team1_id=="CSK"| match_data$team2_id=="CSK")
#length(matches_csk_played)
win_csk<-matches_csk_win/length(matches_csk_played)*100
matches_kkr_played<-which(match_data$team1_id=="KKR"| match_data$team2_id=="KKR")
matches_mi_played<-which(match_data$team1_id=="MI"| match_data$team2_id=="MI")
matches_dc_played<-which(match_data$team1_id=="DC"| match_data$team2_id=="DC")
matches_dd_played<-which(match_data$team1_id=="DD"| match_data$team2_id=="DD")
matches_rcb_played<-which(match_data$team1_id=="RCB"| match_data$team2_id=="RCB")
matches_pw_played<-which(match_data$team1_id=="PW"| match_data$team2_id=="PW")
matches_rps_played<-which(match_data$team1_id=="RPS"| match_data$team2_id=="RPS")
matches_dc_played<-which(match_data$team1_id=="DC"| match_data$team2_id=="DC")
matches_rr_played<-which(match_data$team1_id=="RR"| match_data$team2_id=="RR")
matches_ktk_played<-which(match_data$team1_id=="KTK"| match_data$team2_id=="KTK")
matches_gl_played<-which(match_data$team1_id=="GL"| match_data$team2_id=="GL")
matches_kxi_played<-which(match_data$team1_id=="KXI"| match_data$team2_id=="KXI")
win_csk<-matches_csk_win/length(matches_csk_played)*100
win_kkr<-matches_kkr_win/length(matches_kkr_played)*100
win_dc<-matches_dc_win/length(matches_dc_played)*100
win_dd<-matches_dd_win/length(matches_dd_played)*100
win_gl<-matches_gl_win/length(matches_gl_played)*100
win_ktk<-matches_ktk_win/length(matches_ktk_played)*100
win_mi<-matches_mi_win/length(matches_mi_played)*100
win_pw<-matches_pw_win/length(matches_pw_played)*100
win_rcb<-matches_rcb_win/length(matches_rcb_played)*100
win_rps<-matches_rps_win/length(matches_rps_played)*100
win_rr<-matches_rr_win/length(matches_rr_played)*100
win_srh<-matches_srh_win/length(matches_srh_played)*100
win_kxi<-matches_kxi_win/length(matches_kxi_played)*100
matches_srh_played<-which(match_data$team1_id=="SRH"| match_data$team2_id=="SRH")
graph_win<-c(win_csk,win_kkr,win_dc,win_dd,win_gl,win_ktk,win_mi,win_pw,win_rcb,win_rps,win_rr,win_srh,win_kxi)
barplot(graph_win,xlab="Teams",ylab = "matches",main="Matches won by team",names.arg = teaam_names,cex.names = 0.6,col = colorr)
