## 序言
 此数据包让运输矿车GUI配置更加简单快捷，只需要在storage配置并执行生成函数即可快速配置一个GUI

## 功能
支持以下功能：

* 单击物品执行指令/切换菜单

## Storage结构

![Storage结构](https://cloud-photo.windwaves.top/Chest_GUI/storage_cn.png)
## 示例storage

默认配置
~~~mcfunction
data merge storage windwaves_sea:chest_gui {\
config:{\
    "test":{\
        "mode":"npc",\
        "slot_id":["1"],\
        "slot":{\
                "1":{\
                    "item":{\
                        "id": "minecraft:diamond",\
                        "components":{},\
                        "count": 1 \
                    },\
                    "click_event":{\
                        "action":"show_ui", \
                        "value":"test1" \
                    }\
                }\
        }\
    }\
}\
}
~~~
## 指令解析

### 生成运输矿车GUI
~~~mcfunction
function chest_gui:command/summon {name:"name",x:1,y:1,z:1}
~~~

生成运输矿车GUI，需先写入配置，name为上方配置中的配置名称（下文相同）。x、y、z均为坐标值。

### 清除运输矿车GUI
~~~mcfunction
function chest_gui:command/remove {name:"name"}
~~~

### 删除配置( 同时清除运输矿车GUI )
~~~mcfunction
function chest_gui:command/delete_setting {name:"name"}
~~~

---
## 下载
QQ群：117464315

Github：https://github.com/WindWavesSea/Chest-Minecart-GUI/

Modrinth: https://modrinth.com/datapack/chest-minecart-gui/

## 鸣谢
感谢[NOX OBSCURA](https://space.bilibili.com/1184771713)提供的矿车打开检测思路
