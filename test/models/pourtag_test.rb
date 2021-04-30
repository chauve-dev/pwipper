require "test_helper"

class PourtagTest < ActiveSupport::TestCase
  test "pweep should create pourtag" do
    Ut1 = Utilisateur.create(nickname: "Chauve",
                             username: "baldus_maximus",
                             email: "jeantetjoey.pro@gmail.com",
                             password: "123",
                             bio: "Chauve un jour chauve toujours",
                             profile_picture: nil)
    pweep = Pweep.create(body: "Mon premier pweep %pweeper !", utilisateur_id: Ut1.id)
    pourtag = Pourtag.find_by(pweep_id: pweep.id)
    assert !pourtag.nil?
  end

  test "pweep should not create pourtag" do
    Ut1 = Utilisateur.create(nickname: "Chauve",
                             username: "baldus_maximus",
                             email: "jeantetjoey.pro@gmail.com",
                             password: "123",
                             bio: "Chauve un jour chauve toujours",
                             profile_picture: nil)
    pweep = Pweep.create(body: "Mon premier pweep pweeper !", utilisateur_id: Ut1.id)
    pourtag = Pourtag.find_by(pweep_id: pweep.id)
    assert pourtag.nil?
  end
end
