require "test_helper"

class PweepTest < ActiveSupport::TestCase
  test "pweep should be valid" do
  Ut1 = Utilisateur.create(nickname: "Chauve",
                               username: "baldus_maximus",
                               email: "jeantetjoey.pro@gmail.com",
                               password: "123",
                               bio: "Chauve un jour chauve toujours")
    pweep = Pweep.new(body: "Mon premier pweep", utilisateur_id: Ut1.id)
    assert pweep.valid?
  end

  test "pweep should have content" do
  Ut1 = Utilisateur.create(nickname: "Chauve",
                                 username: "baldus_maximus",
                                 email: "jeantetjoey.pro@gmail.com",
                                 password: "123",
                                 bio: "Chauve un jour chauve toujours")
    pweep = Pweep.new(utilisateur_id: Ut1.id)
    assert !pweep.valid?
  end

  test "pweep need user" do
    pweep = Pweep.new(body: "body")
    assert !pweep.valid?
  end
end
