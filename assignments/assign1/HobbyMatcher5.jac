""" Hobby Matcher - (Step 5 style) """

walker HobbyMatcher {
    has preferences: str;

    can start with `root entry;
    can match_hobby with turn entry;
}

# Node to hold "ideal" hobbies
node turn {
    has ideal_hobbies: str == 'sports, arts, coding, reading, travel';
}

# Example entries (like test runs)
with entry:__main__ {
    root spawn HobbyMatcher('football, music, coding');
    root spawn HobbyMatcher('painting, hiking');
    root spawn HobbyMatcher('gaming, sleeping, dancing');
}

# Walker start method
impl HobbyMatcher.start {
    if not [root --> (`?turn)] {
        next = root ++> turn(str(self.preferences));
    } else {
        next = [root --> (`?turn)];
    }
    visit next;
}

# Walker matching logic
impl HobbyMatcher.match_hobby {
    if [-->] {
        visit [-->];
    } else {
        if self.preferences < here.ideal_hobbies {
            print(f'Hobbies "{self.preferences}" are interesting but not a full match!');
            here ++> turn(here.ideal_hobbies);
        } else {
            print(f'Perfect Match! Your hobbies "{self.preferences}" align well');
            disengage;
        }
    }
}
