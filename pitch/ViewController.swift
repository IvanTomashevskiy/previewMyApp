//
//  ViewController.swift
//  pitch
//
//  Created by Иван on 06.07.2020.
//  Copyright © 2020 Ivan Tomashevskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    func firstPageTxt(){
        let startTxt = UILabel(frame: CGRect(x: 0, y: 300, width: 370, height: 100))
               startTxt.text = "Привет,меня зовут Ваня. Я хочу сделать приложение, которое будет анализировать погоду и подсказывать водителям, когда им лучше всего мыть свою машину."
               startTxt.textAlignment = .center
               startTxt.numberOfLines = 10
            myScrollView.addSubview(startTxt)
        
    }
    func swipeTxt(){
        let swipetTxt = UILabel(frame: CGRect(x: 120, y: 400, width: 200, height: 100))
        swipetTxt.text = "Свайпай вправо ->"
        myScrollView.addSubview(swipetTxt)

    }
    func secondPageTxt(){
        let apiTxt = UILabel(frame: CGRect(x: 380, y: 100, width: 370, height: 200))
        apiTxt.text = "Для этого я хочу использовать API погоды, ну например завтра будет дождь, а ты взял и помыл машину сегодня, считай деньги на ветер, приложение будет советовать когда лучше помыть машину ->"
        apiTxt.numberOfLines = 10
        myScrollView.addSubview(apiTxt)
        
    }
    
    func thirdPageTxt(){
        let widgetTxt = UILabel(frame: CGRect(x: 770, y: 20, width: 370, height: 200))
        widgetTxt.text = "Все вы наверно видели виджеты ios 14, я попользовался ими и это очень удобная штука, так что я хочу, что бы в моем приложении был такой виджет ->"
        widgetTxt.numberOfLines = 10
        myScrollView.addSubview(widgetTxt)
    }
    
    func fourthPageTxt(){
        let lastTxt = UILabel(frame: CGRect(x: 1130, y: 100, width: 370, height: 200))
        lastTxt.text = "Еще можно запихнуть карту с ближайшими мойками, так же такого еще нет в AppStore.🤗"
        lastTxt.numberOfLines = 10
        myScrollView.addSubview(lastTxt)
        
    }
    var myScrollView = UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        let appImg = UIImage(named: "app")
        let widgetsImg = UIImage(named: "widgets")
        let apiImg = UIImage(named: "api")
        let scrollViewRect = self.view.bounds
        
        myScrollView  = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 4, height: scrollViewRect.size.height)
        self.view.addSubview(myScrollView)
        
        //1 стр
        var imageViewRect = self.view.bounds
        firstPageTxt()
        swipeTxt()
        
        //2 стр
        imageViewRect.origin.x += imageViewRect.size.width
        let apiImgView = self.newImageViewWidthImage(paramImage: apiImg!, paramFrame: imageViewRect)
        myScrollView.addSubview(apiImgView)
        secondPageTxt()

        
        //3 стр
        imageViewRect.origin.x += imageViewRect.size.width
        let widgetsImgView = self.newImageViewWidthImage(paramImage: widgetsImg!, paramFrame: imageViewRect)
        myScrollView.addSubview(widgetsImgView)
        thirdPageTxt()

        
        //последняя стр
        imageViewRect.origin.x += imageViewRect.size.width
        let appImgView = self.newImageViewWidthImage(paramImage: appImg!, paramFrame: imageViewRect)
        myScrollView.addSubview(appImgView)
        fourthPageTxt()

    }
   
    func newImageViewWidthImage(paramImage:UIImage, paramFrame: CGRect)->UIImageView{
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }


}

