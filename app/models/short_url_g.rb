class ShortUrlG < ApplicationRecord
	after_create :generate_sort_url

	private
	def generate_sort_url
		p self
		short_url =  get_short_url(self.id)
		self.short_url = short_url
		self.save
	end

  def get_short_url(id)
    alphabet="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    temp = id
    short_url=""
    while temp != 0
      short_url = alphabet.slice((temp%62)-1)+short_url
      if (temp % 62) == 0
        temp = temp - 1
      end
      temp=temp/62
    end
    return short_url
  end
end
