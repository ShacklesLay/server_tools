### larknotice

Modified from [Luther-Sparks/GPTWrapper (github.com)](https://github.com/Luther-Sparks/GPTWrapper)

**larknotice只需要复制larknotice.py即可，不依赖其他文件。**

#### 效果演示
larknotice会在程序运行、程序出错和程序结束时通过飞书机器人汇报相关内容。
![image](https://github.com/user-attachments/assets/06c37fe6-d640-48c9-a2a5-681db47e72ab)

如果想要在汇报内容中加入当前任务名称，可以向被`lark_sender()`装饰的函数传入参数`lark_task`。具体代码样例可见README底部。效果如下所示：


![image](https://github.com/user-attachments/assets/48aa1fd8-9586-4489-8322-fb83d01717f8)



#### 前置条件

larknotice监听代码运行情况需要飞书创建一个群组（如果只想发给自己，可以不拉任何人来创建一个只包含自己的群组）

然后在群组设置-机器人里选择添加机器人-自定义机器人，你可以任意选定机器人的头像、名称、描述等，个人建议每个项目创建一个机器人，并在名称和描述里说明清楚该机器人为哪个项目服务，这样在收到消息时可以清楚知道应该去看哪个项目

[![机器人生成](https://github.com/Luther-Sparks/GPTWrapper/raw/master/images/robot.PNG)](https://github.com/Luther-Sparks/GPTWrapper/blob/master/images/robot.PNG)

添加后会得到一个webhook地址，请妥善保管此地址并不要暴露给他人，否则他人可以通过此url无限攻击你 你可以添加安全设置帮助自己避免被他人攻击，但我懒得保证这个的安全性就暂时没做

[![webhook](https://github.com/Luther-Sparks/GPTWrapper/raw/master/images/webhook.png)](https://github.com/Luther-Sparks/GPTWrapper/blob/master/images/webhook.png)

至此你就完成了机器人的添加。


使用样例如下所示：

```python
import sys
sys.path.append("/remote-home1/cktan/server_tools/") # Change to your `server_tools` path
from larknotice import lark_sender

@lark_sender(webhook_url=your_webhook_url)
def train(lark_task):
    print('training...')
    return 

lark_task='Traing Llava'
train(lark_task=lark_task)
```
