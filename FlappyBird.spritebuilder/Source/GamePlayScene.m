#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
	character = (Character*)[CCBReader load:@"Character"];
	[physicsNode addChild:character];
	[self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
	// this will get called every time the player touches the screen
	[character flap];
}

@end
