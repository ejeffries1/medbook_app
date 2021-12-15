3.times do |i|
    @user = User.create(username: "user#{i+1}", password: "test")
    @medication = @user.medications.create(medication: "tylenol#{i+1}", strength: "3#{i+2}", side_effects: "head ache", count:28, user_id: i+1)
    end