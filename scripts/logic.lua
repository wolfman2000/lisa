function canEnterArea2()
  return Tracker:ProviderCountForCode( "chief" )
end

function canEnterArea3()
  return canEnterArea2() and Tracker:ProviderCountForCode( "guardian" )
end

function canEnterArea4()
  return canEnterArea3() and Tracker:ProviderCountForCode( "mermaid" )
end

function canEnterArea5()
  return canEnterArea4() and Tracker:ProviderCountForCode( "nome" )
end

function canEnterArea6()
  return canEnterArea5() and Tracker:ProviderCountForCode( "alice" )
end

function canEnterArea7()
  return canEnterArea6() and Tracker:ProviderCountForCode( "king" )
end

function hasAllEmblems()
  return (
    Tracker:ProviderCountForCode( "emblema" ) and
    Tracker:ProviderCountForCode( "emblemb" ) and
    Tracker:ProviderCountForCode( "emblemc" ) and
    Tracker:ProviderCountForCode( "emblemd" ) and
    Tracker:ProviderCountForCode( "embleme" ) and
    Tracker:ProviderCountForCode( "emblemf" ) and
    Tracker:ProviderCountForCode( "emblemg" ) and
    Tracker:ProviderCountForCode( "emblemh" )
  )
end

function hasWoodstinTrio()
  return (
    Tracker:ProviderCountForCode( "w2woodstindeer" ) and
    Tracker:ProviderCountForCode( "w2woodstindog" ) and
    Tracker:ProviderCountForCode( "w2woodstinsquirrel" )
  )
end
