with entry {

    print("Welcome to the Jac Basics Playground!");
    print("We'll test your understanding of variables and if/else logic.");

    # Exercise 1: Variable manipulation
    print("\nExercise 1: Variable Practice\n");
    name = "Sylvia";
    mood = "excited";
    
    print(f"Hello {name}! You seem {mood} to learn Jac!");
    print("Now let's change your mood!");

    mood = "curious";

    print(f"Now you feel {mood}. That is great progress.");

    print("------------------------------------------------------");

    # Exercise 2: Combining Logic
    print("\nExercise 2: Decision Practice\n");
    score = 75;

    print(f"You scored: {score}");
    if score >= 80 {
        print("\nExcelent work!");
    } else {
        if score >= 60 {
            print("\nGood job, but you can improve!");
        } else {
            print("\nKeep practicing you'll get there!");
        }
    }

    print("------------------------------------------------------");
    print("\nGood job, you've completed all beginner exercises!");    

}