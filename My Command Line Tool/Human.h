#import <Foundation/Foundation.h>

// declaration
@interface Human : NSObject
{
    // variables
    int age;
    float height;
    NSString* name;
    float weight;
}

// function to set the name to any given name

// function = method = action
// declares the presence of a method
-(void)setMyObjectsNameTo:(NSString *)givenName;

-(NSString *)getMyObjectsName;

-(void)setName:(NSString *)inpName andAge:(int)inpAge;

-(void)printNameAnadAge;

@end
