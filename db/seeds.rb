services = [
  { name: 'water' },
  { name: 'phone' },
  { name: 'energy' },
  { name: 'gas' }
]

services.each do |service|
  Service.create(service)
end
