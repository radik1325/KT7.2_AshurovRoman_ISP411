   M S B A M L   `   `   `  ����G  CIS-MasterPol, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IS_MasterPol.PagesIS_MasterPol.Pages  5      (    "IS_MasterPol.Pages.HistoryPagePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:IS_MasterPol.Pages     5        N� 
Background
  ����� N� Title$v pИС - Мастер пол, страница истории взаимоотношений с партнером��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   6)   �� 5      $��70 �6   6*   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ GridHistory��5      $��0��6(   $��Center=�65   $��Center=�6P      AutoGenerateColumns .     
IsReadOnly .    CanUserAddRows .     CanUserDeleteRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Продукт��6N   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6%   �� *Products.ProductName+6a     5      $-	 'Количество продукции��6T   
 6%   �� *PartnerProductCountProduct+6t     5      $-	 'Количество продукции��6d   
 6%   �� *PartnerProductDate+ �� StringFormat$ 
yyyy-MM-dd��6�   5      �� 5   
   -   5         ��Name$ 
BackButton��5      $��1��6   $��
Назад��6K   $��Center=�5      $��Center=�6,   6L   5      5      