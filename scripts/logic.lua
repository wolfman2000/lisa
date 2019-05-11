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
  -- TODO: Find a way to loop this.
  if Tracker:ProviderCountForCode( "emblema" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemb" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemc" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemd" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "embleme" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemf" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemg" ) <= 0 then
    return 0
  end
  if Tracker:ProviderCountForCode( "emblemh" ) <= 0 then
    return 0
  end
  return 1
end

function canDefeatMetalMonsters()
  if Tracker:ProviderCountForCode( "zantetsu" ) > 0 then
    return 1
  end
  return Tracker:ProviderCountForCode( "soulblade" )
end

function canDefeatSpiritMonsters()
  if Tracker:ProviderCountForCode( "spirit" ) > 0 then
    return 1
  end
  return Tracker:ProviderCountForCode( "soulblade" )
end
