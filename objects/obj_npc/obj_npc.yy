{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_npc",
  "spriteId": {
    "name": "spr_npc",
    "path": "sprites/spr_npc/spr_npc.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":2,"eventType":2,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"frameindex","varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"framestart","varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"framecount","varType":1,"value":"2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"framespeed","varType":1,"value":"12","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player","varType":5,"value":"obj_player","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dialogue","varType":2,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dialogue_options_trapped","varType":6,"value":"\"They trapped\\nme...\", \"I'm not strong\\nenough to escape...\", \"Help me!\", \"I'm not good\\nenough...\", \"I don't feel like\\nmyself...\", \"I'm not making\\nany progress...\", \"I wish I was\\ndifferent...\", \"This all feels\\nso pointless...\", \"I can't get\\nbetter...\", \"I feel stuck...\", \"I'm a loser...\", \"Don't look at\\nme...\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"They trapped\\nme...\"",
        "\"I'm not strong\\nenough to escape...\"",
        "\"Help me!\"",
        "\"I'm not good\\nenough...\"",
        "\"I don't feel like\\nmyself...\"",
        "\"I'm not making\\nany progress...\"",
        "\"I wish I was\\ndifferent...\"",
        "\"This all feels\\nso pointless...\"",
        "\"I can't get\\nbetter...\"",
        "\"I feel stuck...\"",
        "\"I'm a loser...\"",
        "\"Don't look at\\nme...\"",
      ],"multiselect":true,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dialogue_options_freed","varType":6,"value":"\"Thank you, I\\nfeel better!\", \"Those\\nstereotypes\\nwere so\\nself-limiting!\", \"I feel free!\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"Thank you, I\\nfeel better!\"",
        "\"Those\\nstereotypes\\nwere so\\nself-limiting!\"",
        "\"I feel free!\"",
      ],"multiselect":true,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dialogue_initial","varType":6,"value":"\"Thank for you freeing me! Let me help you out!\", \"That nasty slime pressured me into hating myself and my\\nbody.\", \"Once I started to believe him, he threw me into this\\ncontainer!\", \"Keep up the good work. I have a few friends that were taken\\nby other slimes.\", \"That <flag> over there should bring you closer to one of\\nthem.\", \"Good luck!\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"Thank for you freeing me! Let me help you out!\"",
        "\"That nasty slime pressured me into hating myself and my\\nbody.\"",
        "\"Once I started to believe him, he threw me into this\\ncontainer!\"",
        "\"Keep up the good work. I have a few friends that were taken\\nby other slimes.\"",
        "\"That <flag> over there should bring you closer to one of\\nthem.\"",
        "\"Good luck!\"",
      ],"multiselect":true,"filters":[],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
}