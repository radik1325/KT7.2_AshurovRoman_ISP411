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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        public static Data.Partner _CurrentPartner = new Data.Partner();
        public static string FlagAddoEdit = "";
        public AddEditPage(Data.Partner _Partner)
        {
            if (_Partner != null)
            {
                _CurrentPartner = _Partner;
                FlagAddoEdit = "Edit";
            }
            if (_Partner == null)
            {
                FlagAddoEdit = "Add";
            }
            DataContext = _CurrentPartner;
            InitializeComponent();
            Init();
            MessageBox.Show("Не работает добавление нового адреса и редактирование", "ВНИМАНИЕ",
                MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void Init()
        {
            TypeBox.ItemsSource = Data.MasterPolDataEntities.GetContext().TypePartner.ToList();
            if (FlagAddoEdit == "Edit")
            {
                NameBox.Text = _CurrentPartner.PartnerName;
                TypeBox.SelectedIndex = (_CurrentPartner.PartnerId - 1);
                RatingBox.Text = _CurrentPartner.PartnerRating.ToString();
                FIOBox.Text = _CurrentPartner.Director.DirectorName;
                PhoneBox.Text = _CurrentPartner.PartnerPhone;
                EmailBox.Text = _CurrentPartner.PartnerEmail;
                string[] adress = new string[5];
                adress[0] = _CurrentPartner.Adress.Index.IndexName;
                adress[1] = _CurrentPartner.Adress.Area.AreaName;
                adress[2] = _CurrentPartner.Adress.City.CityName;
                adress[3] = _CurrentPartner.Adress.Street.StreetName;
                adress[4] = _CurrentPartner.Adress.AdressHouse;
                var concatadress = string.Join(",", adress);
                AdressBox.Text = concatadress.ToString();
            }
        }
        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ViewPartnerPage());
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (NameBox.Text == "")
            {
                errors.AppendLine("Введите наименование");
            }
            if (TypeBox.SelectedIndex == -1)
            {
                errors.AppendLine("Выберите тип");
            }
            if (RatingBox.Text == "")
            {
                errors.AppendLine("Введите рейтинг");
            }
            string[] director = FIOBox.Text.Trim(' ').Split(' ');
            if (director.Length != 3)
            {
                errors.AppendLine("Введите ФИО диретора через пробел");
            }

            if (PhoneBox.Text == "")
            {
                errors.AppendLine("Введите телефон");
            }

            if (EmailBox.Text == "")
            {
                errors.AppendLine("Введите почту");
            }
            string[] NewAdress = AdressBox.Text.Trim(' ').Split(',');

            if (NewAdress.Length != 5)
            {
                errors.AppendLine("Введите адрес правильно пример: \r\n164500,Архангельская область,город Северодвинск,улица Строителей,18");
            }

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString(), "Errors", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var concatDirector = string.Join(" ", director);
            if (FlagAddoEdit == "Add")
            {
                _CurrentPartner.PartnerName = NameBox.Text;
                _CurrentPartner.PartnerEmail = EmailBox.Text;
                _CurrentPartner.PartnerRating = Convert.ToInt32(RatingBox.Text);
                _CurrentPartner.PartnerTypeId = (TypeBox.SelectedIndex + 1);
                _CurrentPartner.PartnerPhone = PhoneBox.Text;

                if (Data.MasterPolDataEntities.GetContext().Director.Any(d => d.DirectorName == concatDirector))
                {
                    var SearchDirector = Data.MasterPolDataEntities.GetContext().Director.Where(d => d.DirectorName == concatDirector).FirstOrDefault();
                    _CurrentPartner.PartnerDirectorId = SearchDirector.DirectorId;
                }
                else
                {
                    _CurrentPartner.PartnerDirectorId = Data.MasterPolDataEntities.GetContext().Director.Max(d => d.DirectorId + 1);
                    Data.Director NewDirector = new Data.Director();
                    NewDirector.DirectorName = concatDirector;
                    Data.MasterPolDataEntities.GetContext().Director.Add(NewDirector);
                    Data.MasterPolDataEntities.GetContext().SaveChanges();
                }

                string index = NewAdress[0];
                string area = NewAdress[1];
                string city = NewAdress[2];
                string street = NewAdress[3];
                string house = NewAdress[4];
                if (Data.MasterPolDataEntities.GetContext().Adress.Any(d => d.Area.AreaName == area
                && d.Index.IndexName == index && d.City.CityName == city && d.Street.StreetName == street && d.AdressHouse == house))
                {
                    var searchAdress = Data.MasterPolDataEntities.GetContext().Adress.Where(d => d.Area.AreaName == area
                    && d.Index.IndexName == index && d.City.CityName == city && d.Street.StreetName == street && d.AdressHouse == house).FirstOrDefault();
                    _CurrentPartner.PartnerAdressId = searchAdress.AdressId;
                }


                if (Data.MasterPolDataEntities.GetContext().Index.Any(d => d.IndexName == index))
                {
                    var SearchDirector = Data.MasterPolDataEntities.GetContext().Index.Where(d => d.IndexName == index).FirstOrDefault();
                    _CurrentPartner.PartnerDirectorId = SearchDirector.IndexId;
                }
                else
                {
                    _CurrentPartner.PartnerDirectorId = Data.MasterPolDataEntities.GetContext().Director.Max(d => d.DirectorId);
                    Data.Director NewDirector = new Data.Director();
                    NewDirector.DirectorName = concatDirector;
                    Data.MasterPolDataEntities.GetContext().Director.Add(NewDirector);
                    Data.MasterPolDataEntities.GetContext().SaveChanges();
                }


                Data.MasterPolDataEntities.GetContext().Partner.Add(_CurrentPartner);
                Data.MasterPolDataEntities.GetContext().SaveChanges();
            }
            if (FlagAddoEdit == "Add")
            {
                _CurrentPartner.PartnerName = NameBox.Text;
                _CurrentPartner.PartnerEmail = EmailBox.Text;
                _CurrentPartner.PartnerRating = Convert.ToInt32(RatingBox.Text);
                _CurrentPartner.PartnerTypeId = (TypeBox.SelectedIndex + 1);
                _CurrentPartner.PartnerPhone = PhoneBox.Text;

                if (Data.MasterPolDataEntities.GetContext().Director.Any(d => d.DirectorName == concatDirector))
                {
                    var SearchDirector = Data.MasterPolDataEntities.GetContext().Director.Where(d => d.DirectorName == concatDirector).FirstOrDefault();
                    _CurrentPartner.PartnerDirectorId = SearchDirector.DirectorId;
                }
                else
                {
                    _CurrentPartner.PartnerDirectorId = Data.MasterPolDataEntities.GetContext().Director.Max(d => d.DirectorId + 1);
                    Data.Director NewDirector = new Data.Director();
                    NewDirector.DirectorName = concatDirector;
                    Data.MasterPolDataEntities.GetContext().Director.Add(NewDirector);
                    Data.MasterPolDataEntities.GetContext().SaveChanges();
                }

                string index = NewAdress[0];
                string area = NewAdress[1];
                string city = NewAdress[2];
                string street = NewAdress[3];
                string house = NewAdress[4];
                if (Data.MasterPolDataEntities.GetContext().Adress.Any(d => d.Area.AreaName == area
                && d.Index.IndexName == index && d.City.CityName == city && d.Street.StreetName == street && d.AdressHouse == house))
                {
                    var searchAdress = Data.MasterPolDataEntities.GetContext().Adress.Where(d => d.Area.AreaName == area
                    && d.Index.IndexName == index && d.City.CityName == city && d.Street.StreetName == street && d.AdressHouse == house).FirstOrDefault();
                    _CurrentPartner.PartnerAdressId = searchAdress.AdressId;
                }


                if (Data.MasterPolDataEntities.GetContext().Index.Any(d => d.IndexName == index))
                {
                    var SearchDirector = Data.MasterPolDataEntities.GetContext().Index.Where(d => d.IndexName == index).FirstOrDefault();
                    _CurrentPartner.PartnerDirectorId = SearchDirector.IndexId;
                }
                else
                {
                    _CurrentPartner.PartnerDirectorId = Data.MasterPolDataEntities.GetContext().Director.Max(d => d.DirectorId);
                    Data.Director NewDirector = new Data.Director();
                    NewDirector.DirectorName = concatDirector;
                    Data.MasterPolDataEntities.GetContext().Director.Add(NewDirector);
                    Data.MasterPolDataEntities.GetContext().SaveChanges();
                }


                Data.MasterPolDataEntities.GetContext().Partner.Add(_CurrentPartner);
                Data.MasterPolDataEntities.GetContext().SaveChanges();
            }
        }
    }}
