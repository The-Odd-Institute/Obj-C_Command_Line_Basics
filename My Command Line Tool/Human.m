#import "Human.h"

// definitons
@implementation Human


-(void)setMyObjectsNameTo:(NSString *)givenName
{
    name = givenName;
}

-(NSString *)getMyObjectsName
{
    return name;
}

-(void)setName:(NSString *)inpName andAge:(int)inpAge
{
    name = inpName;
    age = inpAge;
}

-(void)printNameAnadAge
{
    NSLog(@"Name is: %@ and Age is: %i", name, age);
}

@end
