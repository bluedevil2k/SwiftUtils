//
//  StringUtils.swift
//  StringUtils
//
//  Created by MICHAEL ABERNETHY on 6/5/14.
//
//

extension String
{
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
