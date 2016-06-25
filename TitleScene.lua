local TitleScene = class("TitleScene",cc.load("mvc").ViewBase)

function TitleScene:onCreate()
	
	display.newSprite("HelloWorld.png",display.cx,display.cy)
	:addTo(self)
	-- runAction(cc.RotateBy:create(1.5, 90))
	-- runAction(cc.MoveBy:create(5,cc.p(80,80)))
 
 -- 调用C++ 绘制
    cc.DrawNode:create(5)
    :addTo(self)
    :drawPoint(cc.p(200,200), 20, cc.c4f(0,1,0, 1))
    :drawLine(cc.p(10,10),cc.p(250,250),cc.c4b(1,0,1,1))
 
 -- 触摸响应事件监听
 	local listener = cc.EventListenerTouchOneByOne:create()
 	listener:registerScriptHandler(function(state)
 		print("Here")
 		return false
 	end,cc.Handler.EVENT_TOUCH_BEGAN);
 	cc.Director:getInstance():getEventDispatcher():addEventListenerWithSceneGraphPriority(listener, self)

end


return TitleScene
