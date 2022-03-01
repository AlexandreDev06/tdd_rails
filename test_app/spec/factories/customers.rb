FactoryBot.define do
  factory :customer, aliases: [:user] do # definido apelido para ele usando aliases
    transient do # Serve para criar atributos que funcionam apenas dentro do factory
      upcased {false}
      qtt_orders {3}
    end

    name { Faker::Name.name }
    # email { Faker::Internet.email }
    address { Faker::Address.street_address }
    sequence(:email) { |n| "meu_email-#{n}@email.com" } # cria uma sequencia e pode começar de qualquer objeto que aceite o metodo next

    trait :male do
      gender { 'M' }
    end

    trait :female do
      gender { 'F' }
    end

    trait :vip do
      vip {true}
      days_to_pay {30}
    end
  
    trait :default do 
      vip {false}
      days_to_pay {15}
    end
    trait :with_orders do
      after(:create) do |customer, evaluator|
        create_list(:order, evaluator.qtt_orders, customer: customer)
      end
    end

    factory :customer_male, traits: [:male]
    factory :customer_female, traits: [:female]
    factory :customer_male_vip, traits: [:male, :vip]
    factory :customer_female_vip, traits: [:female, :vip]
    factory :customer_male_default, traits: [:male, :default]
    factory :customer_female_default, traits: [:female, :default]
    factory :customer_default, traits: [:default]
    factory :customer_vip, traits: [:vip]
    
    after(:create) do |customer, evaluator|
      customer.name.upcase! if evaluator.upcased
    end
  end
end

# para usar o factory boy, use build ou create
# Build apenas instancia o objeto, não o salva
# Create instancia o objeto e salva ele

# Herança de factories fica dentro do primeiro factory, 
# assim os factories abaixo ja possuem os atributos acima