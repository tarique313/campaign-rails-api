# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
campaigns = []
(1..40).each do |campaign_index|
  campaigns.push({
    name: "campaign_#{campaign_index}",
    image: "campaign_#{campaign_index}_image.png",
    target_amount: rand(1000..100000),
    investment_multiple: rand(10.0..100.0).round(2),
    sector: ['IT', "EDU"].sample,
    country: ["BD","USA", "UK", "GER"].sample})
end
Campaign.create(campaigns)
