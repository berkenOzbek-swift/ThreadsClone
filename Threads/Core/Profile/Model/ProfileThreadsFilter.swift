//
//  ProfileThreadsFilter.swift
//  Threads
//
//  Created by Berken Özbek on 31.07.2024.
//

import Foundation

enum ProfileThreadsFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies

    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    var id: Int { return self.rawValue}
}
