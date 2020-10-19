--��Lua�ж���ö��
--tbl�����ͣ�������ö������
--index������ö��ֵ�����ĳ�ʼֵ
function CreatEnumTable(tbl, index) 
    local enumtbl = {} 
    local enumindex = index or 0 
    for i, v in ipairs(tbl) do 
        enumtbl[v] = enumindex + i 
    end 
    return enumtbl 
end 

function CreatEnumTable(tbl, valTbl) 
    local enumtbl = {} 
    for i, v in ipairs(tbl) do  --i :index v:val
        enumtbl[v] = valTbl[i]
    end 
    return enumtbl 
end 

--sample
EnumTable = 
{ 
    "ET1", 
    "ET2", 
}

ValueTable = 
{ 
    1.321, 
    2.432, 
}

EnumTable = CreatEnumTable(EnumTable,ValueTable) 
print(EnumTable.ET1) 
print(EnumTable.ET2)
print('load [CreateEnumTable.lua] sucess')