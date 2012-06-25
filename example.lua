local Client = require('./init').Client

local client = Client:new('', '', nil)
client.entities.get(function(err, results)
  if err then
    p(err)
    return
  end
  for k, v in pairs(results.values) do
    print('ID = ' .. v.id)
    print('  LABEL = ' .. v.label)
    print('  MANAGED = ' .. tostring(v.managed))
    print('')
  end
end)
