#import <UIKit/UIKit.h>

void __attribute__((constructor)) libLoad();

void libLoad(){
    NSLog(@"What the fuck");
}