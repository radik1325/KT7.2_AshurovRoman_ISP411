using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace IS_MasterPol.Pages
{
    /// <summary>
    /// Логика взаимодействия для ViewPartnerPage.xaml
    /// </summary>
    public partial class ViewPartnerPage : Page
    {
        public ViewPartnerPage()
        {
            InitializeComponent();
            ViewPartner.ItemsSource = Data.MasterPolDataEntities.GetContext().Partner.ToList();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage((sender as Button).DataContext as Data.Partner));
        }

        private void historyButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.HistoryPagePage((sender as Button).DataContext as Data.Partner));
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage(null));
        }
    }
}
