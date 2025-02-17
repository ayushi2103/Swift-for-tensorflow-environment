//
//  main.swift
//  inference
//
//  Created by Ayushi Tiwari on 2020-05-14.
//  Copyright © 2020 Ayushi Tiwari. All rights reserved.
//

import Foundation
import TensorFlow
import Benchmark
import STBImage

benchmark("add string reserved capacity") {
    var x: String = ""
    x.reserveCapacity(2000)
    for _ in 1...1000 {
        x += "hi"
    }
}

Benchmark.main()

//struct MLPClassifier {
//    var w1 = Tensor<Float>(repeating: 0.1, shape: [2, 4])
//    var w2 = Tensor<Float>(shape: [4, 1], scalars: [0.4, -0.5, -0.5, 0.4])
//    var b1 = Tensor<Float>([0.2, -0.3, -0.3, 0.2])
//    var b2 = Tensor<Float>([[0.4]])
//
//    func prediction(for x: Tensor<Float>) -> Tensor<Float> {
//        let o1 = tanh(matmul(x, w1) + b1)
//        return tanh(matmul(o1, w2) + b2)
//    }
//}
//let input = Tensor<Float>([[0.2, 0.8]])
//let classifier = MLPClassifier()
//let prediction = classifier.prediction(for: input)
//print(prediction)
//

