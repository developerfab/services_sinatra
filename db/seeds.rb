services = [
  { name: 'water' },
  { name: 'phone' },
  { name: 'electricity' },
  { name: 'gas' }
]

services.each do |service|
  Service.create(service)
end
