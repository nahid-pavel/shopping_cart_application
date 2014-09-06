credit_card = ActiveMerchant::Billing::CreditCard.new(
   
   number: '8177889977874',
   month: '8',
   year: '2014',
   first_name: 'pavel',
   last_name: 'nahid',
   verification_value: '143'
  )

puts "Is #{credit_card.number} valid? #{credit_card.valid?}"
