//
//  ViewController.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/15/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    let delayTime = dispatch_time(DISPATCH_TIME_NOW,
        Int64(1 * Double(NSEC_PER_SEC)))
    
    
    
    
    @IBOutlet var oneLabel: UILabel! //1
    
    @IBOutlet var twoLabel: UILabel! //12
    
    @IBOutlet var threeLabel: UILabel! //8
    
    @IBOutlet var fourLabel: UILabel! //11
    
    @IBOutlet var fiveLabel: UILabel! // 15
    
    @IBOutlet var sixLabel: UILabel! //9
    
    @IBOutlet var sevenLabel: UILabel! //2
    
    @IBOutlet var eightLabel: UILabel! //6
    
    @IBOutlet var nineLabel: UILabel! // 13
    
    @IBOutlet var tenLabel: UILabel! // 10
    
    @IBOutlet var elevenLabel: UILabel! //3
    
    @IBOutlet var twelveLabel: UILabel! // 5
    
    @IBOutlet var thirteenLabel: UILabel! //7
    
    @IBOutlet var fourteenLabel: UILabel! //14
    
    @IBOutlet var fifteenLabel: UILabel! //16
    
    @IBOutlet var sixteenLabel: UILabel! //4
    
    @IBOutlet var HelloLabel: UIButton! //last
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.oneLabel.alpha = 0.0
        self.twoLabel.alpha = 0.0
        self.threeLabel.alpha = 0.0
        self.fourLabel.alpha = 0.0
        self.fiveLabel.alpha = 0.0
        self.sixLabel.alpha = 0.0
        self.sevenLabel.alpha = 0.0
        self.eightLabel.alpha = 0.0
        self.nineLabel.alpha = 0.0
        self.tenLabel.alpha = 0.0
        self.elevenLabel.alpha = 0.0
        self.twelveLabel.alpha = 0.0
        self.thirteenLabel.alpha = 0.0
        self.fourteenLabel.alpha = 0.0
        self.fifteenLabel.alpha = 0.0
        self.sixteenLabel.alpha = 0.0
        self.HelloLabel.alpha = 0.0
        

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        /*
        UIView.animateWithDuration(1.5, animations: {
            self.oneLabel.alpha = 1.0
        })
*/
        let animationDelayTime = 0.25
        
        UIView.animateWithDuration(animationDelayTime, animations:{
            self.oneLabel.alpha = 1.0
            }, completion: {finished in
                if finished{
                    UIView.animateWithDuration(animationDelayTime, animations:{
                        self.sevenLabel.alpha = 1.0
                        }, completion: {finished in
                            if finished{
                                UIView.animateWithDuration(animationDelayTime, animations:{
                                    self.elevenLabel.alpha = 1.0
                                    }, completion: {finished in
                                        if finished{
                                            UIView.animateWithDuration(animationDelayTime, animations:{
                                                self.sixteenLabel.alpha = 1.0
                                                }, completion: {finished in
                                                    if finished{
                                                        UIView.animateWithDuration(animationDelayTime, animations:{
                                                            self.twelveLabel.alpha = 1.0
                                                            }, completion: {finished in
                                                                if finished{
                                                                    UIView.animateWithDuration(animationDelayTime, animations:{
                                                                        self.eightLabel.alpha = 1.0
                                                                        }, completion: {finished in
                                                                            if finished{
                                                                                UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                    self.thirteenLabel.alpha = 1.0
                                                                                    }, completion: {finished in
                                                                                        if finished{
                                                                                            UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                self.threeLabel.alpha = 1.0
                                                                                                }, completion: {finished in
                                                                                                    if finished{
                                                                                                        UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                            self.sixLabel.alpha = 1.0
                                                                                                            }, completion: {finished in
                                                                                                                if finished{
                                                                                                                    UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                        self.tenLabel.alpha = 1.0
                                                                                                                        }, completion: {finished in
                                                                                                                            if finished{
                                                                                                                                UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                    self.fourLabel.alpha = 1.0
                                                                                                                                    }, completion: {finished in
                                                                                                                                        if finished{
                                                                                                                                            UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                self.twoLabel.alpha = 1.0
                                                                                                                                                }, completion: {finished in
                                                                                                                                                    if finished{
                                                                                                                                                        UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                            self.nineLabel.alpha = 1.0
                                                                                                                                                            }, completion: {finished in
                                                                                                                                                                if finished{
                                                                                                                                                                    UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                                        self.fourteenLabel.alpha = 1.0
                                                                                                                                                                        }, completion: {finished in
                                                                                                                                                                            if finished{
                                                                                                                                                                                UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                                                    self.fiveLabel.alpha = 1.0
                                                                                                                                                                                    }, completion: {finished in
                                                                                                                                                                                        if finished{
                                                                                                                                                                                            UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                                                                self.fifteenLabel.alpha = 1.0
                                                                                                                                                                                                }, completion: {finished in
                                                                                                                                                                                                    if finished{
                                                                                                                                                                                                        UIView.animateWithDuration(animationDelayTime, animations:{
                                                                                                                                                                                                            self.HelloLabel.alpha = 1.0
                                                                                                                                                                                                            }, completion: {finished in
                                                                                                                                                                                                                if finished{
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                        })
                                                                                                                                                                                                    }
                                                                                                                                                                                            })
                                                                                                                                                                                        }
                                                                                                                                                                                })
                                                                                                                                                                            }
                                                                                                                                                                    })
                                                                                                                                                                }
                                                                                                                                                        })
                                                                                                                                                    }
                                                                                                                                            })
                                                                                                                                        }
                                                                                                                                })
                                                                                                                            }
                                                                                                                    })
                                                                                                                }
                                                                                                        })
                                                                                                    }
                                                                                            })
                                                                                        }
                                                                                })
                                                                            }
                                                                    })
                                                                }
                                                        })
                                                    }
                                            })
                                        }
                                })
                            }
                    })
                }
        })
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

