unitDef = {
  unitname            = [[armcybr]],
  name                = [[Wyvern]],
  description         = [[Singularity Bomber]],
  amphibious          = true,
  --autoheal			  = 25,
  buildCostEnergy     = 2000,
  buildCostMetal      = 2000,
  builder             = false,
  buildPic            = [[ARMCYBR.png]],
  buildTime           = 2000,
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canLoopbackAttack   = false,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[-2 0 0]],
  collisionVolumeScales  = [[32 12 40]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  crashDrag           = 0.02,
  cruiseAlt           = 250,

  customParams        = {
    helptext       = [[The Wyvern drops a single powerful bomb that can send units flying. It is sturdy enough to penetrate moderate AA and escape to repair, but should not be used recklessly - it's too expensive for that.]],
    description_bp = [[Bombardeiro de implos?o]],
    description_de = [[Implosion Bomber]],
    description_fr = [[Bombardier r Implosion]],
    description_pl = [[Bombowiec Implozyjny]],
    helptext_bp    = [[]],
    helptext_de    = [[Wyvern ist ein mächtiger Bomber, der alles in Schutt und Asche legt. Seine Schlagkraft und Ausdauer ist riesig, doch muss er nach jedem Angriff Munition nachladen, was ihn eher für Angriffe auf einzelne Ziele prädestiniert.]],
    helptext_fr    = [[Le Wyvern est tout simplement la mort venue du ciel. Ce bombardier lourdement blindé et relativement lent transporte une tete nucléaire tactique r implosion. Capable de faire des ravages dans les lignes ennemies, ou de détruire des structures lourdement blindées. Tout simplement mortel utilisé en petites escadres.]],
    helptext_pl    = [[Wyvern spuszcza pojedynczą niszczycielską bombę o dużej sile i obszarze rażenia, która może rozrzucić mniejsze jednostki wokół. Jest też wystarczająco wytrzymały, by latać wśród umiarkowanej ilości obrony przeciwlotniczej. Jest jednak bardzo drogi, co nie pozwala na lekkomyślne używanie.]],
    modelradius    = [[10]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bombernuke]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  mass                = 460,
  maxAcc              = 0.75,
  maxDamage           = 2360,
  maxFuel             = 1000000,
  maxVelocity         = 9,
  minCloakDistance    = 75,
  mygravity           = 1,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[ARMCYBR]],
  refuelTime		  = 20,
  script			  = [[armcybr.lua]],
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],
  side                = [[ARM]],
  sightDistance       = 660,
  smoothAnim          = true,
  turnRadius          = 180,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ARM_PIDR]],
	  badTargetCategory	 = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs          = {

    ARM_PIDR = {
      name                    = [[Implosion Bomb]],
      areaOfEffect            = 192,
      avoidFeature            = false,
      avoidFriendly           = false,
	  burnblow                = true,
	  cegTag                  = [[raventrail]],
      collideFriendly         = false,
   
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 2001.3,
        planes  = 2001.3,
        subs    = 100,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 100,
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = -0.8,
      interceptedByShieldType = 2,
      model                   = [[wep_m_deathblow.s3o]],
      pitchtolerance          = [[16000]],
      range                   = 500,
      reloadtime              = 8,
      renderType              = 1,
      shakeduration           = [[2]],
      shakemagnitude          = [[18]],
      smokedelay              = [[0.2]],
      smokeTrail              = false,
      soundHit                = [[weapon/missile/liche_hit]],
      soundStart              = [[weapon/missile/liche_fire]],
      startsmoke              = [[1]],
      startVelocity           = 300,
      tolerance               = 16000,
      tracks                  = true,
      turnRate                = 30000,
	  weaponAcceleration      = 200,
      weaponTimer             = 6,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 400,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Wyvern]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2360,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 800,
      object           = [[licho_d.s3o]],
      reclaimable      = true,
      reclaimTime      = 800,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Wyvern]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2360,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 400,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armcybr = unitDef })
