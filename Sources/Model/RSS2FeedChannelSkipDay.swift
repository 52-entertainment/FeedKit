//
//  RSS2ChannelSkipDay.swift
//
//  Copyright (c) 2016 Nuno Manuel Dias
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/**
    Days of the week as described by the `skipDays` element of the RSS 2.0 specification.
    See: http://cyber.law.harvard.edu/rss/skipHoursDays.html#skiphours
*/
public enum RSS2FeedChannelSkipDay: String {
    
    case Monday     = "monday"
    case Tuesday    = "tuesday"
    case Wednesday  = "wednesday"
    case Thursday   = "thursday"
    case Friday     = "friday"
    case Saturday   = "saturday"
    case Sunday     = "sunday"
    
}

extension RSS2FeedChannelSkipDay {
    
    /**
        Lowercase the incoming `rawValue` string to try and match the `RSS2FeedChannelSkipDay`'s `rawValue`
    */
    public init?(rawValue: String) {
        
        switch rawValue.lowercaseString {
            
        case "monday":     self = .Monday
        case "tuesday":    self = .Tuesday
        case "wednesday":  self = .Wednesday
        case "thursday":   self = .Thursday
        case "friday":     self = .Friday
        case "saturday":   self = .Saturday
        case "sunday":     self = .Sunday
            
        default: return nil
            
        }
        
    }
    
}