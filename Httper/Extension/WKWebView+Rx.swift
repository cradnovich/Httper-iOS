//
//  UIWebView+Rx.swift
//  Httper
//
//  Created by Meng Li on 2019/08/20.
//  Copyright © 2019 MuShare. All rights reserved.
//

import RxCocoa
import RxSwift
import WebKit

extension Reactive where Base: WKWebView {
    
    var html: Binder<String> {
        return Binder(base) { webView, html in
            webView.loadHTMLString(html, baseURL: nil)
        }
    }
    
}
