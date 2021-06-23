SystemAvatar = 'https://i.imgur.com/sPnOMWm.jpg'

UserAvatar = 'https://i.imgur.com/sPnOMWm.jpg'

SystemName = 'SlimRP System'


SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				   {'/ad', '**[AD]:**'},
				   {'/anontweet', '**[ANONTWEET]:**'},
				   {'/anonad', '**[ANONAD]:**'},
				   {'/giveitem', '**(Admin: [ USERNAME_NEEDED_HERE ])** giveitem'},
				   {'/heal', '**(Admin: [ USERNAME_NEEDED_HERE ])** *healed* '},
				   {'/dv', '**(Admin: [ USERNAME_NEEDED_HERE ])** *Deleted vehicle*'},
				   {'/revive', '**(Admin: [ USERNAME_NEEDED_HERE ])** *Revived* '},
				   {'/giveweapon', '**(Admin: [ USERNAME_NEEDED_HERE ])** giveweapon'},
				   {'/car', '**(Admin: [ USERNAME_NEEDED_HERE ])** *spawned the vehicle:* '},
				   {'/fixveh', '**(Admin: [ USERNAME_NEEDED_HERE ])** *Repaired vehicle*'},
				   {'/kick', '**(Admin: [ USERNAME_NEEDED_HERE ])** <<You should not be using the kick command, use the M menu>> *kick*'},
				   {'/ban', '**(Admin: [ USERNAME_NEEDED_HERE ])** <<You should not be using the ban command, use the M menu>> *ban*'},
				   {'/giveaccountmoney', '**(Admin: [ USERNAME_NEEDED_HERE ])** giveaccountmoney'},
				   {'/logout', '**(Admin: [ USERNAME_NEEDED_HERE ])** *logged out/in* '},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/AnyCommand',
					   '/AnyCommand2',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/AnotherCommand', 'WEBHOOK_LINK_HERE'},
					  {'/AnotherCommand2', 'WEBHOOK_LINK_HERE'},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/report'
			  }

