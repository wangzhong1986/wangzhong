//
//  ViewController.m
//  firstProjectOnGitHub
//
//  Created by wangzhong on 15/7/1.
//  Copyright (c) 2015年 wangzhong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**

     通过Xcode将代码提交到github上，把仓库放在github上
     
     》1.注册一个github帐号
     》2.配置SSH keys，只要配置了SSH keys就可以和github无缝衔接
     
     》主页
     》点击设置
     》点击SSH keys
     》gennerating SSH keys
     
     
     》1.监察本地的SSH keys
        在用户目录下  查找   ls -al ~/.ssh
     》2.如果文件夹不存在需要手动创建一个 mkdir  .ssh
     》3.根据github的提示生成ssh.keys
        在.ssh目录下执行 ssh-keygen -t rsa -b 4096 -C "your_email@example.com" （生成公钥及私钥）
        输入完成之后连续按下回车，知道出现牛逼的图形为止
     》4.生成完公钥和私钥之后输入 ls －la 查看是否生成成功  （id_rsa  id_rsa.pub）
     
     》5.根据github提示3获得公钥
        pbcopy < ~/.ssh/id_rsa.pub
        cat id_rsa.pub
        以上2种方法都可以
     
     》6.setting - >ssh.key -> addSSHKey
     将刚才获取到的公钥添加进去
     
     》7.更具github第四步提示验证公钥
        ssh -T git@github.com
     
        验证成功，网页上灰色圆点会变成绿色
     
     》8.copy到公钥后打开github主页
        点击仓库 repositories
        点击new来到github创建仓库界面
     
     》9.通过github提供的地址下载一个空的仓库到本地
        创建一个新的项目到本地文件夹中
        利用XCode提交代码到github
        注意：用户名密码的用户名为github上显示的昵称而不是登录帐号
     

     *    author:wz
     **/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
