RegisterNetEvent('pee')
AddEventHandler('pee', function()
  local particleDictionary = "scr_amb_chop"
  local particleName = "ent_anim_dog_peeing"
  local animDictionary = 'missbigscore1switch_trevor_piss'
  local animName = 'piss_loop'

  RequestNamedPtfxAsset(particleDictionary)
  while not HasNamedPtfxAssetLoaded(particleDictionary) do
     Citizen.Wait(0)
  end

  RequestAnimDict(animDictionary)

  while not HasAnimDictLoaded(animDictionary) do
    Citizen.Wait(0)
  end

  SetPtfxAssetNextCall(particleDictionary)
  bone   = GetPedBoneIndex(GetPlayerPed(-1), 11816)
  TaskPlayAnim(GetPlayerPed(-1), animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)
  effect = StartParticleFxLoopedOnPedBone(particleName, GetPlayerPed(-1), 0.0, 0.0, -0.1, 90.0, 90.0, 20.0, bone, 2.0, false, false, false);
  Wait(5500)
  StopParticleFxLooped(effect, 0)
end)

RegisterNetEvent('poop')
AddEventHandler('poop', function()
  local particleDictionary = "scr_amb_chop"
  local particleName = "ent_anim_dog_poo"
  local animDictionary = 'switch@trevor@on_toilet'
  local animName = 'trev_on_toilet_exit'

  RequestNamedPtfxAsset(particleDictionary)
  while not HasNamedPtfxAssetLoaded(particleDictionary) do
     Citizen.Wait(0)
  end

  RequestAnimDict(animDictionary)

  while not HasAnimDictLoaded(animDictionary) do
    Citizen.Wait(0)
  end

  SetPtfxAssetNextCall(particleDictionary)
  bone   = GetPedBoneIndex(GetPlayerPed(-1), 11816)

  TaskPlayAnim(GetPlayerPed(-1), animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)
  effect = StartParticleFxLoopedOnPedBone(particleName, GetPlayerPed(-1), 0.0, -0.9, -0.5, 0.0, 0.0, 20.0, bone, 2.0, false, false, false);
  Wait(2000)
  StopParticleFxLooped(effect, 0)
end)
