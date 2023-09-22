{
  enable = true;
  matchBlocks."*".extraOptions = {
    "IdentityAgent" = "\"~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock\"";
  };
  matchBlocks."webld5" = {
    hostname = "webld5.bus.msu.edu";
    user = "popeoliv@campusad.msu.edu";
  };
  matchBlocks."weblt5" = {
    hostname = "weblt5.bus.msu.edu";
    user = "popeoliv@campusad.msu.edu";
  };
  matchBlocks."weblp5" = {
    hostname = "weblp5.bus.msu.edu";
    user = "popeoliv@campusad.msu.edu";
  };
}
