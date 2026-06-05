/// @function			initZapFly();
/// @description		Initializes instances of the ZapFly Object (call in create event)

/**
* TODO: Set up roll event that will call a new init of a zap fly when the zap fly is destroyed
*/

function initZapFly() constructor{
	
	// create a new ZapFly instance, Object has these params so might not need it or.. idk
//step_ctr = 30;
//hp = 100; 
//strength = 25;
//spd = 3;
}


/// @function			i_like_to_move_it_move_it()
/// @description		Sets the enemy movement in random direction and speed if random roll evaluates true
function i_like_to_move_it_move_it(spd) {
	if (irandom(9) == 1) {
		motion_set(random(360), 1 + random(spd));
	};
};



/// @function			enemyLogic();
/// @params {REAL}		step_ctr;
/// @description		Evaluates distance to player and chooses to chase or roll for random movement depending on step counter
function enemyLogic(spd, step_ctr = 0) {
	
	distanceToPlayer = distance_to_object(Object_Player);
	
	if (distanceToPlayer <= 200) {
		EnemyChaseState()
	} else {
		EnemyWanderState(spd, step_ctr)
	};
}



/// @function			EnemyWanderState();
/// @params {REAL}		spd, step_ctr;
/// @description		evaluates counter to decide if we do a random movement roll	
function EnemyWanderState(spd, step_ctr){
			if (step_ctr > 0) {
			step_ctr -= 1
		} else {
			i_like_to_move_it_move_it(spd)
		}
}



/// @function			EnemyChaseState()
/// @description		Enemy gives chase toward player at max speed
function EnemyChaseState(){
	speed = 3;
	direction = point_direction(x,y,Object_Player.x, Object_Player.y);
}
	
function EnemyAttackState(){}


	
function EnemyDieState(){}
	
