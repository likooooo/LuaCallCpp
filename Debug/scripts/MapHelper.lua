local tblHelper =  dofile("TableHelper.lua")   --���ز��������нű� ,������ʵ����TableHelper��

--������ά���飬width,height,�ֱ�Ϊ��ά�����Ⱥ͸߶�
function CreateMap(width,height,initVal) 
  array = {}
    for r = 1, height do
        array[r] = {}
        for c = 1, width do
            array[r][c] = initVal
        end
    end
    return array
end

--��ӡ��ά����
function PrintMap(map,width,height) 
    for r = 1, height do
      print('##############��ǰִ��ӡ���� '..r..' �У����ݿ�ȣ�'..#map[r]..' ##############')
      --PrintTable(map[r])
      PrintTableWidthIndex(map[r])
    end
end

map = CreateMap(10,5,100)
PrintMap(map,10,5)

print('load [MapHelper.lua] sucess')