//
//  Feedback.swift
//  HapTics Ref
//
//  Created by Gerry Gao on 29/1/2022.
//

import Foundation

public enum FeedbackType {
    case Notification
    case Impact
}

struct Feedback {
    let type: FeedbackType
    let name: String
    let icon: String
    let desc: String
    let code: String
    let isConfigurable: Bool
}
