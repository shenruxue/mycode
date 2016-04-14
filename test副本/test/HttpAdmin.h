//
//  HttpAdmin.h
//  test
//
//  Created by yyx on 16/3/21.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import <Foundation/Foundation.h>

#define JOBADMIN (@"http://api.bosszhipin.com/api/batch/batchRun?uniqid=B84A2DBF6E9EB7F9F45F28CC92C1230F&curidentity=0&client_info=%7B%0A%20%20%22channel%22%20%3A%20%220%22%2C%0A%20%20%22os%22%20%3A%20%22iOS%22%2C%0A%20%20%22bssid%22%20%3A%20%2280%3A89%3A17%3Ac%3A5e%3Ab8%22%2C%0A%20%20%22model%22%20%3A%20%22iPhone6%2C2%22%2C%0A%20%20%22ssid%22%20%3A%20%22TP-LINK_5EB8%22%2C%0A%20%20%22start_time%22%20%3A%20%221458522875309%22%2C%0A%20%20%22version%22%20%3A%20%228.4%22%2C%0A%20%20%22resume_time%22%20%3A%20%221458522875309%22%0A%7D&app_id=1002&batch_method_feed=%5B%0A%20%20%22method%3DadActivity%5C%2Fget%26dataType%3D0%26expectId%3D682169%22%2C%0A%20%20%22method%3DrecommendedBoss%5C%2Fget%26pageSize%3D15%26page%3D1%26expectId%3D682169%22%2C%0A%20%20%22method%3Dgeek%5C%2FrainBowList%26expectId%3D682169%22%0A%5D&t=BAmADElZlUWtXblw7AD1TNQA3VmJXZAVjWjEJNw..&v=4.2&sig=V2.0f96f8b0f2be4eef67a5173c567b04954&req_time=1458522882226")

#define NEWADMIN (@"http://api.bosszhipin.com/api/recommendedBoss/get?app_id=1002&client_info=%7B%0A%20%20%22channel%22%20%3A%20%220%22%2C%0A%20%20%22os%22%20%3A%20%22iOS%22%2C%0A%20%20%22bssid%22%20%3A%20%2280%3A89%3A17%3Ac%3A5e%3Ab8%22%2C%0A%20%20%22model%22%20%3A%20%22iPhone6%2C2%22%2C%0A%20%20%22ssid%22%20%3A%20%22TP-LINK_5EB8%22%2C%0A%20%20%22start_time%22%20%3A%20%221458522875309%22%2C%0A%20%20%22version%22%20%3A%20%228.4%22%2C%0A%20%20%22resume_time%22%20%3A%20%221458522875309%22%0A%7D&pageSize=15&uniqid=B84A2DBF6E9EB7F9F45F28CC92C1230F&sortType=2&req_time=1458522945503&t=BAmADElZlUWtXblw7AD1TNQA3VmJXZAVjWjEJNw..&curidentity=0&sig=V2.0af4a6adf4654746d5516ec6d31a66664&page=1&v=4.2&expectId=682169")

#define HOTADMIN (@"http://api.bosszhipin.com/api/recommendedBoss/get?app_id=1002&client_info=%7B%0A%20%20%22channel%22%20%3A%20%220%22%2C%0A%20%20%22os%22%20%3A%20%22iOS%22%2C%0A%20%20%22bssid%22%20%3A%20%2280%3A89%3A17%3Ac%3A5e%3Ab8%22%2C%0A%20%20%22model%22%20%3A%20%22iPhone6%2C2%22%2C%0A%20%20%22ssid%22%20%3A%20%22TP-LINK_5EB8%22%2C%0A%20%20%22start_time%22%20%3A%20%221458522875309%22%2C%0A%20%20%22version%22%20%3A%20%228.4%22%2C%0A%20%20%22resume_time%22%20%3A%20%221458522875309%22%0A%7D&pageSize=15&uniqid=B84A2DBF6E9EB7F9F45F28CC92C1230F&sortType=3&req_time=1458522970170&t=BAmADElZlUWtXblw7AD1TNQA3VmJXZAVjWjEJNw..&curidentity=0&sig=V2.01d91b0569378b48f4180304a824de820&page=1&v=4.2&expectId=682169")

@interface HttpAdmin : NSObject

@end
