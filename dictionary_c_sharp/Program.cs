using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//DHARAM K C ; STUDENT# 101044421
namespace COMP2080_Assignment_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Dictionary my_dictionary = new Dictionary();
            int selectNum = MenuOptions();
            while (selectNum != 6)
            {
                switch (selectNum)
                {
                    case 1:
                        Console.Clear();
                        add(my_dictionary);
                        selectNum = MenuOptions();
                        break;
                    case 2:
                        Console.Clear();
                        delete(my_dictionary);
                        selectNum = MenuOptions();
                        break;
                    case 3:
                        Console.Clear();
                        getMeanig(my_dictionary);
                        selectNum = MenuOptions();
                        break;
                    case 4:
                        Console.Clear();
                        Console.WriteLine(my_dictionary.printWordList());
                        Console.WriteLine();
                        Console.WriteLine("PRESS ANY KEY FOR MAIN MENU.");
                        Console.ReadKey();
                        selectNum = MenuOptions();
                        break;
                    case 5:
                        Console.Clear();
                        my_dictionary.printDictionary();
                        Console.WriteLine();
                        Console.WriteLine("PRESS ANY KEY FOR MAIN MENU.");
                        Console.ReadKey();
                        selectNum = MenuOptions();
                        break;
                    default:
                        break;
                }
            }

        }

        public static int MenuOptions()
        {
            int option;

            do
            {
                Console.Clear();
                Console.WriteLine("ANGEL'S DICTIONARY");                
                Console.WriteLine("Please select a number from 1 to 6 to choose an option below:");
                Console.WriteLine("1: Add a new word.\n" +
                                  "2: Delete a word.\n" + 
                                  "3: Get the meaning of a word.\n" +
                                  "4: Print the list of dictionary words.\n" +
                                  "5: Print the list of words and their meanings.\n" +
                                  "6: Exit ANGEL'S DICTIONARY");                              
                int.TryParse(Console.ReadLine(), out option);
            } while (option < 1 || option > 6);
            return option;
        }

        public static void add(Dictionary dict1)
        {
            Console.WriteLine("ADDING NEW WORD AND MEANING TO DICTIONARY");           
            bool isIntString;
            string word;
            do
            {
                Console.WriteLine("Please enter a word. Alphabets only:");
                word = Console.ReadLine();
                word = word.ToLower().Trim();
                isIntString = word.Any(char.IsDigit);
            }while(isIntString);

            Console.WriteLine("Please enter the meaning of the word:");
            string meaning = Console.ReadLine();

            Console.Clear();
            if (dict1.add(word, meaning))
            {
                Console.WriteLine("The word was succcessfully added.");
            }
            else
            {
                Console.WriteLine("The word was not added. Please try again!");
            }

            Console.WriteLine("PRESS ANY KEY FOR MAIN MENU.");
            Console.ReadKey();
        }
        public static void delete(Dictionary dict1)
        {
            Console.WriteLine("DELETING WORD FROM DICTIONARY");
            Console.WriteLine();    


            Console.Write(dict1.printWordList()); // Prints the list of words from the dictionary           
            Console.WriteLine("\n\nFrom the list above, please enter a word to delete:");
            string delWord = Console.ReadLine();
            delWord = delWord.ToLower().Trim();
            Console.Clear();
            if (dict1.delete(delWord)) Console.WriteLine("The word was succcessfully deleted.");
            else Console.WriteLine("The word was not deleted. Please try again!");

            Console.WriteLine("PRESS ANY KEY FOR MAIN MENU.");
            Console.ReadKey();



        }
        public static void getMeanig(Dictionary dict1)
        {
            Console.WriteLine("LOOKING UP THE MEANING OF A WORD\n");
            Console.Write(dict1.printWordList()); // Prints the list of words from the dictionary
            Console.WriteLine("\n\nFrom the list above, please enter a word to get the meaning:");
            string word = Console.ReadLine();
            word = word.ToLower().Trim();
            string result = dict1.getMeaning(word);

            Console.Clear();
            Console.WriteLine(result);

            Console.WriteLine("PRESS ANY KEY FOR MAIN MENU.");
            Console.ReadKey();
        }


    }
}

