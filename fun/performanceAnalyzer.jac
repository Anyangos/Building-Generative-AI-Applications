with entry {

    # Each student has (Math, English, Science) marks

    # Create the data using tuple and a dictionary
    students = {
        "Alice": (85, 90,92),
        "Bob": (78,81,74),
        "Charlie": (90, 88, 95),
        "Diana": (72,84, 80)
    };

    print("Student data loaded!");

    # Loop through dictionary and unpack tuple
    for name in students {
        (math, eng, sci) = students[name];
        print(f"{name}'s scores -> Math={math}, English={eng}, Science={sci}");
    }

    # Use list comprehension to calculate averages
    averages = {name: sum(students[name]) / len(students[name]) for name in students};
    print("Average scores:", averages);

    # Use dictionary looping + comparison logic to find the highest average student
    top_student = "";
    top_score = 0;

    for name in averages {
        if averages[name] > top_score {
            top_score = averages[name];
            top_student = name;
        }
    }

    print(f"{top_student} has the highest average: {top_score}");

    # Use list comprehension to find those whose avg is > 85
    high_performers = [name for name in averages if averages[name] >= 85];
    print("High performer:", high_performers);

    winner = (top_student, top_score);

     print(f"The winner in this exam was {winner[0]}, with an average of {winner[1]}");
}