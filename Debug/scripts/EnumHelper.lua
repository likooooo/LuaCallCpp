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



--sample
EnumTable = 
{ 
    "ET1", 
    "ET2", 
}

EnumTable = CreatEnumTable(EnumTable,0) 
print(EnumTable.ET1) 
print(EnumTable.ET2)