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
  matchBlocks."aitprd100a" = {
    hostname = "aitprd100a.itservices.msu.edu";
    user = "popeoliv";
  };
  matchBlocks."aitqa100a" = {
    hostname = "aitqa100a.itservices.msu.edu";
    user = "popeoliv";
  };
  matchBlocks."aittst100a" = {
    hostname = "aittst100a.itservices.msu.edu";
    user = "popeoliv";
  };
  matchBlocks."broad-itsra" = {
    hostname = "broad-itsra.campusad.msu.edu";
    user = "CAMPUSAD\\popeoliv";
  };
  matchBlocks."encoding-server" = {
    hostname = "encoding-server.home.arpa";
    user = "oliver";
  };
}
