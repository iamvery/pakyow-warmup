Pakyow::App.bindings do
  scope :tweet do
    binding :avatar do
      { src: bindable.user.profile_image_url }
    end

    binding :user do
      bindable.user.name
    end

    binding :show do
      { href: router.group(:tweet).path(:show, tweet_id: bindable.id) }
    end
  end
end
