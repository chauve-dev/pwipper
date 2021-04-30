require "test_helper"

class UtilisateurTest < ActiveSupport::TestCase
  test "User should be valid" do
      Ut1 = Utilisateur.new(nickname: "Chauve",
                               username: "baldus_maximus",
                               email: "jeantetjoey.pro@gmail.com",
                               password: "123",
                               bio: "Chauve un jour chauve toujours")
      assert Ut1.valid?
  end


   test "User should be invalid nickname" do
      Ut1 = Utilisateur.new(username: "baldus_maximus",
                               email: "jeantetjoey.pro@gmail.com",
                               password: "123",
                               bio: "Chauve un jour chauve toujours")
      assert !Ut1.valid?
   end

   test "User should be invalid username" do
      Ut1 = Utilisateur.new(nickname: "Chauve",
                               email: "jeantetjoey.pro@gmail.com",
                               password: "123",
                               bio: "Chauve un jour chauve toujours")
      assert !Ut1.valid?
    end

  test "User should be invalid email" do
      Ut1 = Utilisateur.new(nickname: "Chauve",
                               username: "baldus_maximus",
                               password: "123",
                               bio: "Chauve un jour chauve toujours")
      assert !Ut1.valid?
  end

  test "User should be invalid password" do
    Ut1 = Utilisateur.new(nickname: "Chauve",
                             username: "baldus_maximus",
                             email: "jeantetjoey.pro@gmail.com",
                             bio: "Chauve un jour chauve toujours")
    assert !Ut1.valid?
  end

   test "User should be invalid bio" do
        Ut1 = Utilisateur.new(nickname: "Chauve",
                                 username: "baldus_maximus",
                                 email: "jeantetjoey.pro@gmail.com",
                                 password: "123")
        assert !Ut1.valid?
   end

end
