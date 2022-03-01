FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Pedido número - #{n}"}
    # association :customer, factory: :customer  ### associa a customer manualmente ao campo customer
    customer # Deixar apenas o elemento referencia ja associa automaticamente o elemento correto para a referencia
  end
end
