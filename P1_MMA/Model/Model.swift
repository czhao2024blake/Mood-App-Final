//
//  Logic.swift
//  a5_tests
//
//  Created by Christopher Zhao24 on 1/24/24.
//

import Foundation


 class StringAnalysis: ObservableObject{
    
     let keywords : [String] = ["alert","inspired","determined","attentive","active","afraid","nervous","upset","guilty","hostile","enthusiastic","proud","strong","scared","irritable","ashamed","interested","distressed","excited","jittery","vigilant","ashamed","inspired","nervous","determined","attentive","jittery","active","afraid","proud","happy","content","joyful","excited","grateful","stressed","anxious","calm","overwhelmed","relaxed","sad","melancholy","hopeful","despair","frustrated","satisfied","bored","curious","insecure","confident","angry","annoyed","apathetic","motivated","discouraged","elated","gloomy","inspired","lonely","connected","tired","amazing", "wonders", "worst","terrible","Incredible","Marvelous","Disastrous","Horrific","Exceptional","Delightful","Catastrophic","Appalling","Exhilarating","Pleasant","Unpleasant","Depressing","Satisfying","Frustrating","Joyous","Troubling","Blissful","Annoying","Enthralling","Dreadful","Inspiring","Distressing","Thrilling","Displeasing","Heartwarming","Alarming","Dope","Epic","Trash","Woke","Cancelled","Goat","Legit","Ratchet","Squad goals","Trolled","Winning","Fail","Glow up","Hater","On point","Overrated","Slept on","Stoked","Try-hard","Whack","Dank","Clapped","Fire","Litty","Shady","Boujee","Poppin'","Canceled","Cheugy","Stan","Toxic","Bomb","Cringey","Lit","Meh","Chill","Hyped","Cringe","Ghosted","Salty","Vibing","Lame","Basic","Thirsty","Slay","Fire","Snatched","FOMO","Gucci","Sus","Bussin","Bet","Radical","Gnarly","Bogus","Groovy","Wicked","Lame","Fly","Phat","Bummer","Chill","Square","Psyched","Stoked","Dweeb","Tight","Fresh","Cheesy","Slick","Beat","Copacetic","Hella","Busted","Slammin'","Radical","Tubular","Spaz","Trippin'","Cancelled","Sleepy","Tired","Intrigued","Curious","Bored","Relaxed","Energized","Drained","Interested","Indifferent","Focused","Distracted","Excited","Apathetic", "great", "bad"]
     
      let values : [Int] = [3,4,4,3,3,-4,-4,-5,-3,-5,5,4,4,-4,-4,-3,4,-5,5,-4,3,-4,5,-4,4,3,-3,3,-5,4,5,4,5,4,3,-4,-5,3,-4,4,-5,-3,4,-5,-4,3,-2,3,-4,5,-5,-3,-3,4,-4,5,-4,5,-5,4,-2, 5, 4, -5, -4, 5, 4, -5, -4, 5, 4,-5,-4,5,3,-3,-5,3,-3,5,-3,5,-2,4,-5,4,-4,5,-2,4,-3,3,3,-3,2,-3,3,2,-2,3,-3,3,-3,3,-2,3,-2,2,3,-2,-3,2,-3,3,3,-2,-1,3,-3,-2,3,-3,3,-3,3,0,2,3,-3,-4,-2,2,-3,-2,-2,3,3,2,-3,2,-2,3,1,3,2,-3,3,3,-3,3,2,-2,2,-2,3,3,-2,2,2,-2,2,-2,2,2,-3,3,3,3,-2,-1,-3,0,-1,2,2,-2,2,3,-3,2,0,2,-2,3,-2,3, -3]
     
      let phrases: [String: [String]] = [
         "Strongly Positive": [ 
             "You're vibing high and inspiring others to reach for their best selves. Keep shining, your energy is magnetic!",
             "Your positivity is like a superpower, transforming challenges into opportunities. Keep this flow going!",
             "Like the brightest star in the night sky, your positivity lights the way for yourself and others. Shine on!",
             "Your energy is a beacon of hope and inspiration. Continue to spread your light wherever you go.",
             "The universe celebrates your radiant spirit. Keep harnessing this positive energy to uplift those around you."
         ],
         "Positive": [
             "You've got that glow of someone who's found their flow. Keep riding this wave of positivity and see where it takes you.",
             "Your positive mindset is your ticket to every adventure. Stay open, stay curious, and watch the universe align for you.",
             "Every step forward is a step towards your dreams. Keep moving with this positive momentum!",
             "Positivity is your superpower, turning everyday moments into magic. Keep weaving this magic into your life.",
             "The seeds of positivity you plant today will bloom into tomorrow's joys. Keep nurturing your garden of positivity."
         ],
         "Neutral": [
             "Embracing the pause between the highs and lows is where growth happens. You're exactly where you need to be.",
             "Neutral is the new starting line. From here, you can sprint or stroll into your next chapter with clarity and purpose.",
             "In stillness, we find our strength. Your calm center is a powerful force for navigating life's ups and downs.",
             "Balance is not something you find; it's something you create. Your equilibrium is a testament to your wisdom.",
             "The beauty of neutrality is in its potential. What wonderful path will you choose from this balanced place?"
         ],
         "Negative": [
             "It's okay to not be okay. Honor your feelings, breathe through them, and remember, you're stronger than your toughest day.",
             "Turn your challenges into your teachers. Each breath is a new beginning, a chance to reset and rise again.",
             "Dark clouds may hover, but they bring the rain that nourishes growth. Embrace the growth, even when it's hard.",
             "Remember, it's during our struggles that we often grow the most. You are being shaped into something even more amazing.",
             "Feelings are like waves: they come and go. Let yourself feel, but don't forget, brighter days are on the horizon."
         ],
         "Strongly Negative": [
             "In the shadows, we find our inner light. Trust the process, lean into self-care, and watch yourself emerge stronger.",
             "Life's toughest storms prove the strength of our anchors. Hold fast to your inner calm; this too shall pass, leaving you more grounded than ever.",
             "Even in the darkest moments, your spirit's light can shine through. Find that light within, it will guide you home.",
             "Your resilience in the face of adversity is your true strength. This challenge is but a chapter in your epic story.",
             "Pain and struggle are part of the journey, but they are not the entire story. Keep turning the pages, a new chapter awaits."
         ]
     ]
    
    
    
    
    func tokenizePhrase(_ text: String)->[String]{
        let punctuationCharacterSet = CharacterSet.punctuationCharacters
        let lowercasedText = text.lowercased()
        let stringWithoutPunctuation = lowercasedText.components(separatedBy: punctuationCharacterSet).joined(separator: "")
        let textArray = stringWithoutPunctuation.split(separator: " ", omittingEmptySubsequences: true)
        
        
        
        if text == ""{
            return [""]
        }
        return textArray.map(String.init)
    }
    
    //occurences?
    func countOccurences(_ text: [String], _ keyword: String) -> Int{
        if text.count == 0 || keyword == ""{
            return -10
        }
        var occurences = 0
        for i in 0 ... text.count - 1{
            
            
            if text[i] == keyword{
                occurences += 1
            }
        }
        return occurences
    }
    
    func analyzeTextKeywords(_ text: [String],_ keywords: [String]) -> [Int]{
        var keywordCounts: [Int] = []
        if text.count == 0{
            return [0]
        }
        if keywords == []{
            return []
        }
        for i in 0 ... keywords.count - 1{
            keywordCounts.append(countOccurences(text, keywords[i]))
        }

        return keywordCounts
    }
    
    func computeTextWeight(_ counts: [Int],_ weights: [Int]) -> Int{
        if (counts.count != weights.count) {
            return -10
        }
        if counts == [] && weights == []{
            return 0
        }
        
        var output = 0
        
        for i in 0 ... counts.count - 1 {
            output += counts[i] * weights[i]
        }
        
        return output
    }
    
    func categorizeValue(_  value: Int) -> String{
        if value <= -15{
            return "Strongly Negative"
        } else if value <= -2{
            return "Negative"
        }else if value <= 1{
            return "Neutral"
        }else if value <= 14{
            return "Positive"
        }else {
            return "Strongly Positive"
        }
        
    }
    
    func doEverything(inputText: String) -> String{
        let tokenizedPhrase:[String] = tokenizePhrase(inputText)
        let keywordCounts = analyzeTextKeywords(tokenizedPhrase, keywords)
        let textWeight = computeTextWeight(keywordCounts, values)
        
       return categorizeValue(textWeight)
    }
     
     
    
}
