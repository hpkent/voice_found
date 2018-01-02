module RecordsHelper
  def get_manager_id(current_user)
    if current_user != nil
      if current_user.email != nil
        manager = Manager.where(email:current_user.email)
        if manager.length == 1
          manager_id = manager.first.id
        elsif manager.length > 1
          puts "too many managers"
          manager_id == 1
        elsif manager.length < 1
          puts "no manager"
          manager_id == 1
        end
      end
    end
    manager_id
  end
end
