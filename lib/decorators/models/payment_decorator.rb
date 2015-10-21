Spree::Payment.class_eval do
  attr_accessor :validate_bank_details

  has_attached_file :receipt_img, dependent: :destroy, :styles => {:medium => "800x800>", :thumb => "100x100>"}, :path => ":rails_root/public/assets/payments/receipt_img/:id/:style/:filename", :url => "/assets/payments/receipt_img/:id/:style/:filename"
  validates_attachment :receipt_img, :content_type => { :content_type => /\Aimage\/.*\Z/ }, :size => { :in => 0..2.megabytes }

  validates :bank_name, :account_name, :account_no, :transaction_reference_no, :deposited_on, :presence => true, :if => :validate_bank_details

  scope :from_bank_transfer, -> { joins(:payment_method).where(:spree_payment_methods => { :type => 'Spree::PaymentMethod::BankTransfer' }) }

  def details_submitted?
    transaction_reference_no?
  end
end
