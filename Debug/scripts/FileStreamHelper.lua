require("EnumHelper.lua")

key = {
  readOnly, --��ֻ����ʽ���ļ������ļ�������ڡ�
  writeOnly,--��ֻд�ļ������ļ��������ļ�������Ϊ0�������ļ����ݻ���ʧ�����ļ��������������ļ���
  append,   --�ļ��ɶ���д,�Ը��ӵķ�ʽ��ֻд�ļ������ļ������ڣ���Ὠ�����ļ�������ļ����ڣ�д������ݻᱻ�ӵ��ļ�β�����ļ�ԭ�ȵ����ݻᱻ��������EOF��������
  readwrite --�Կɶ�д��ʽ���ļ������ļ�������ڡ�
}

--+����ɶ���д��û������������������
val = {
  'r',
  'w',
  'a+',
  'r+'
}
Enum_IO_Operate = CreateEnumTable(key,val)
fileHandle = {}

function LoadFile(filepath)
  file = io.open(filepath, key.readOnly)
  table.insert(fileHandle,#fileHandle,file)
  return file
end

function CreateFile(filepath)
  file = io.open(filepath, key.writeOnly)
  table.insert(fileHandle,#fileHandle,file)
  return file
end

function AppendFile(filepath)
  file = io.open(filepath, key.append)
  table.insert(fileHandle,#fileHandle,file)
  return file
end

--�ͷ�ָ���ļ����
function Dispose(file)
  io.close(fileHandle)
  table.remove(fileHandle,file)
end

--�ͷ������ļ����
function DisposeAll()
  io.close(fileHandle)
  idx = 1
  while(idx<=#fileHandle)
    io.close(fileHandle[idx])
    idx = idx + 1
    table.remove(fileHandle,1)
  end
end

print('load [FleStreamHelper.lua] sucess')