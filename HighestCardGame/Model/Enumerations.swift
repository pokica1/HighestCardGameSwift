//
//  Enumerations.swift
//  HighestCardGame
//
//  Created by user206660 on 10/25/21.
//

import Foundation

enum Suit: String {
    case spades = "S", hearts = "H", diamonds = "D", clubs = "C"
}
enum Rank: Int{
    case ace = 14, two = 2, three = 3, four = 4, five = 5, six = 6, seven = 7, eight = 8, nine = 9, ten = 10, jack = 11, queen = 12, king = 13
}
enum Symbol: String {
    case spades = "♤", hearts = "♡", diamonds = "♢", clubs = "♧"
}
enum RankLabel: String {
    case ace = "A", two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", ten = "10", jack = "J", queen = "Q", king = "K"
}


