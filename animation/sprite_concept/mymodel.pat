$Pattern �������_�������� : operation
$Relevant_resources
	_���			: ��� 			 Keep NoChange
	_�����_�����	: ������		 Keep Erase
	_������� 		: ������� Keep Keep
$Time = ������������_��������( 20, 40 )
$Body
_���
	Choice from _���.�����������_�������� > 0
	Convert_begin
		�����������_��������--;

_�����_�����
	Choice from _�����_�����.��������� == ��_������������
	Convert_begin
		��������� = ������������;
		
_�������
	Choice from _�������.���������_c������ == �������
	with_min(_�������.����������_�������)
	Convert_begin
		���������_c������ = ��������;
		������_1_r = _�����_�����.������_1_r;
		������_2_r = _�����_�����.������_2_r;
		������_3_r = _�����_�����.������_3_r;
		������_1_f = _�����_�����.������_1_f;
		������_2_f = _�����_�����.������_2_f;
		������_3_f = _�����_�����.������_3_f;
		������_1_m =num - _�������.������_1_r/(R*2/num);
		������_2_m =num - _�������.������_2_r/(R*2/num);
		������_3_m =num - _�������.������_3_r/(R*2/num);
		�����=(_�������.������_1_m + _�������.������_2_m + _�������.������_3_m);
		�������=_�������.�����/3;
		������������=IMax(IMax(_�������.������_1_m,_�������.������_2_m),IMax(_�������.������_1_m,_�������.������_3_m));
	Convert_end
		���������_c������ = �������;
		����������_�������++;
			
$End
