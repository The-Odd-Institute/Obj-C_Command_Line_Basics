#import <Foundation/Foundation.h>
#import "Human.h"



int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // Declaration / Interface
        int roomTemperature;
        float weight;
        NSString* myString;
        BOOL myBool;
        char myChar;
        
        
        // Definition / Implementation
        roomTemperature = 23;
        
        roomTemperature = roomTemperature + 2;
        roomTemperature += 2;
        roomTemperature ++;
        roomTemperature --;
        roomTemperature *= 2;
        
        myString = @"string";
        
        // convert int to string
        NSLog(@"Temperatore is: %i", roomTemperature);
        
        
        weight = 78.4;
        weight += 3;
        weight = weight - 7;
        weight *= 2;
        
        
        NSLog(@"Current weight is: %f", weight);
        
        
        // now we have a new human that the OBJECT is called amirHuman
        Human* humanNumber_1 = [[Human alloc] init];
        Human* humanNumber_2 = [[Human alloc] init];
        Human* humanNumber_3 = [[Human alloc] init];
        Human* humanNumber_4 = [[Human alloc] init];
        Human* humanNumber_5 = [[Human alloc] init];
        
        
        [humanNumber_1 setName:@"Amir" andAge:36];
        [humanNumber_2 setName:@"Brian" andAge:22];
        [humanNumber_3 setName:@"Tyler" andAge:25];
        [humanNumber_4 setName:@"Ray" andAge:15];
        [humanNumber_5 setName:@"Raman" andAge:16];
        
        
        // what is an array IN ORDER
        
        NSMutableArray* humenArray = [[NSMutableArray alloc] initWithObjects:
                               humanNumber_1, // 0
                               humanNumber_2, // 1
                               humanNumber_3, // 2
                               humanNumber_4,
                               humanNumber_5, nil];
        
        
        [[humenArray objectAtIndex:2] printNameAnadAge];
        
        NSLog(@"\n\n\nWhen getting name only");
        NSLog(@"Name is: %@", [[humenArray objectAtIndex:2] getMyObjectsName] );
        
        
        // find a way to know if anyone's name is Amir
        // serach through the array
        // iterate through the array
        // check if the string of the name is equal to Amir
        // and then say we found him
        
        
        // iterative for loop
        for (int i = 0; i < humenArray.count; i++)
        {
            NSString* thisIndexName = [[humenArray objectAtIndex:i] getMyObjectsName];
            
            NSLog(@"Currently checking: %@", thisIndexName);
            
            
            if ( [thisIndexName isEqualToString: @"Amir"])
            {
                NSLog(@"I found him at %i", i);
                break;
            }
        }
        
        
        // for each loop
        
        for (Human* any in humenArray)
        {
            if ([[any getMyObjectsName] isEqualToString:@"Amir"])
            {
                NSLog(@"It is in place: %lu", (unsigned long)[humenArray indexOfObject:any]);
            }
        }
        
        
        
        
        Human* humanNumber_x = [Human new];
        [humanNumber_x setName:@"Rosy" andAge:20];
        [humenArray addObject:humanNumber_x];
        
        
        
        if ([humenArray containsObject: humanNumber_3])
        {
            
        }
        
    }
    return 0;
}
