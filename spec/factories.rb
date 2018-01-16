FactoryBot.define do
  skip_create

  sequence :vin do
    %w[
      1GNSKCE07BR145670
      WBANU53578CT17179
      1GNALBEK8FZ116480
    ].sample
  end
end
