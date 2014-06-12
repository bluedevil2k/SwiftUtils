//
//  StringUtils.swift
//  StringUtils
//
//  Created by MICHAEL ABERNETHY on 6/5/14.
//
//

extension String
{
    func length() -> Int
    {
        return countElements(self)
    }
    
    func indexOf(searchChar: Character) -> Int?
    {
        var i = 0
        for letter in self
        {
            if letter == searchChar
            {
                return i
            }
            i++
        }
        return nil
    }
    
    func substring(from: Int, length: Int) -> String
    {
        let intermediate = self.substringFromIndex(from)
        return intermediate.substringToIndex(length)
    }
    
    func replace(replaceText: String, replaceWith: String) -> String
    {
        var s = ""
        var i = 0
        let len = replaceText.length()
        while (i < self.length())
        {
            if i + len > self.length() {
                s += self.substring(i, length: self.length() - i)
                break
            }
            
            if (self.substring(i, length: len) == replaceText)
            {
                s += replaceWith
                i += replaceText.length()
            }
            else
            {
                s += self.substring(i, length: 1)
                i++
            }
        }
        
        return s
    }
    
    func convertToCamelCase() -> String
    {
        var s = ""
        var convertNext = false
        for letter in self
        {
            if letter == "_"
            {
                convertNext = true
                continue;
            }
            
            if (convertNext)
            {
                s += String(letter).uppercaseString
            }
            else
            {
                s += letter
            }
            convertNext = false
        }
        
        return s
    }
    
    func convertToUnderscoreCase() -> String
    {
        var s = ""
        var i = 0
        for letter in self
        {
            if (String(letter) >= "A" && String(letter) <= "Z")
            {
                if (i == 0)
                {
                    s += String(letter).lowercaseString
                }
                else
                {
                    s += "_" + String(letter).lowercaseString
                }
            }
            else
            {
                s += letter
            }
            i++
        }
        
        return s
    }
}
