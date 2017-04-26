mo_engen <- function(df, ins_cap, mo_name, net_gen, per_gen) {
  #calculate new column filled with nameplate generation
  df[ , mo_name] <- 24 * 30 * df[ , ins_cap]
  #calculate net generation as a percent of the nameplate generation
  df[ , per_gen] <- df[ , net_gen]/df[ , mo_name]
  return(df)
}