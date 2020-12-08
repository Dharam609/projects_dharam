using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//DHARAM K C ; STUDENT# 101044421
namespace COMP2080_Assignment_1
{
    // Creating a class named Dictionary with many methods to manipulate Word_Info objects
    // within a Dictionary object.
    public class Dictionary
    {      
        private int maxWords;
        private int numWords;
        private Word_Info[] wordList;

        public Dictionary()
        {
            maxWords = 10000;
            numWords = 0;
            wordList = new Word_Info[maxWords];
        }

        // This method adds a word in a Dictionary object when a word and the meaning are given
        public bool add(string word, string meaning)
        {
            Word_Info newWord = new Word_Info(word, meaning);

            if (maxWords > numWords)
            {
                if (numWords == 0 || binarySearch(word, wordList) == -1)
                {
                    int x = numWords;
                    while ((x > 0) && (string.Compare(wordList[x - 1].word, word) < 0))
                    {
                        wordList[x] = wordList[x - 1];
                        x--;
                    }
                    wordList[x] = newWord;
                    numWords++;
                    return true;
                }
                else return false;
            }
            return false;

        }

        //Method to delete a WordInfo object when a word is given
        public bool delete(string key)
        {
            int deleteIndex = binarySearch(key, wordList);
            if (deleteIndex == -1) return false;
            for (int x = 0; x < numWords - 1; x++)
            {
                if (x < deleteIndex) continue;
                wordList[x] = wordList[x + 1];
            }
            numWords--;
            return true;
        }

        //Method to return a meaning of a word when a word is given
        public string getMeaning(string key)
        {
            int keyIndex = binarySearch(key, wordList);
            string result = "";
            if (keyIndex == -1)
            {
                result = "The word was not found. Please try another word";
            }
            else
            { result = "The meaning of the word " + wordList[keyIndex].word + " : " + wordList[keyIndex].meaning; }
            return result;
        }

        // Method to return the total numbers of words in the dictonary
        public int getCount()
        {
            return numWords;
        }

        // Method to print the wordList of dictionary words
        public string printWordList()
        {
            Console.Write("LIST OF WORDS: ");            
            string list = "";
            for (int x = 0; x < numWords; x++)
            {
                list = list + wordList[x].word + " ";
            }
            return list;
        }

        public void printDictionary()
        {
            Console.WriteLine("WORDS" + "\t\t" + "MEANINGS");
            Console.WriteLine();
            string wordList = "";
            for (int x = 0; x < numWords; x++)
            {
                wordList = wordList + this.wordList[x].word + ":\t\t" + this.wordList[x].meaning + "\n";
            }
            Console.Write(wordList);
        }

        public int binarySearch(string keyWord, Word_Info[] myWord)
        {
            int minIndex = 0;
            int maxIndex = numWords - 1;
            while (minIndex <= maxIndex)
            {
                int midIndex = (minIndex + maxIndex) / 2;
                if (string.Compare(myWord[midIndex].word, keyWord) == 0)
                {
                    return midIndex;
                }

                else
                  if (string.Compare(myWord[midIndex].word, keyWord) < 0)
                {
                    maxIndex = midIndex - 1;
                }
                else minIndex = midIndex + 1;
            }
            return -1;
        }

    }
}
