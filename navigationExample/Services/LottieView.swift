//
//  LottieView.swift
//  navigationExample
//
//  Created by 10lift on 26.12.2022.
//

import SwiftUI
import Lottie
 
struct LottieView: NSViewRepresentable {
    let lottieFile: String
    var loopMode: LottieLoopMode = .playOnce

    let animationView = LottieAnimationView()

    func updateNSView(_ nsView: NSView, context: Context) {}
    func  makeNSView(context: Context) -> NSView {
        let view = NSView(frame: .zero)
 
        animationView.animation = LottieAnimation.named(lottieFile)
        animationView.contentMode = .scaleAspectFit
        animationView.play()
 
        view.addSubview(animationView)
 
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
 
        return view
    }
 }
