--ʵ��table�Ŀ���
function RemoveAt(source, index) 
  --source.remove(index)
  table.remove(source,index)
end

--ָ��pos����val
function Insert(source, pos,val) 
  table.insert (source, pos, val)
end
	

--ʵ��table�Ĵ�ӡ,ǰ��ͬʱ��ӡindex�����߽���ӡֵ
function PrintTableWidthIndex(source)
  for k,v in ipairs(source) do
    print(k,v)
  end
end

function PrintTable(source)
  for k,v in ipairs(source) do
      print(v)
  end
end
--[[
list = {1,2,3,4,5}
PrintTable(list)
RemoveAt(list,1)
PrintTableWidthIndex(list)
]]--
print('load [TableHelper.lua] sucess')