﻿/*flexberryautogenerated="true"*/

namespace IIS.Горводоканал
{
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Web.Controls;
    using ICSSoft.STORMNET.Web.AjaxControls;
    using ICSSoft.STORMNET.Web.Tools;
    using System;
    using System.Collections.Generic;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET.Business.LINQProvider;
    using System.Linq;

    public partial class ОбращениеE : BaseEditForm<Обращение>
    {
        /// <summary>
        /// Конструктор формы.
        /// </summary>
        public ОбращениеE()
            : base(Обращение.Views.ОбращениеE)
        {
        }

        /// <summary>
        /// Путь до формы.
        /// </summary>
        public static string FormPath
        {
            get { return "~/forms/Obrashhenie/ObrashhenieE.aspx"; }
        }

        /// <summary>
        /// Вызывается самым первым в Page_Load.
        /// </summary>
        protected override void Preload()
        {
            ctrlТип.MasterViewName = ТипОбращения.Views.ТипОбращенияL.Name;
            ctrlПервичное.MasterViewName = Обращение.Views.ОбращениеL.Name;
            ctrlОтветственныйСотрудник.MasterViewName = Сотрудник.Views.СотрудникL.Name;
            ctrlВид.MasterViewName = ВидОбращени.Views.ВидОбращениL.Name;
            ctrlПричина.MasterViewName = ПричинаОбращения.Views.ПричинаОбращенияL.Name;
            ctrlПринявшийОператор.MasterViewName = Сотрудник.Views.СотрудникL.Name;

            ctrlНомер.Enabled = false;
            ctrlДатаПоступления.OnlyDate = false;
        }

        /// <summary>
        /// Здесь лучше всего писать бизнес-логику, оперируя только объектом данных.
        /// </summary>
        protected override void PreApplyToControls()
        {
            //создаем ограничение на только актуальных сотрудников
            var ds = (SQLDataService)DataServiceProvider.DataService;
            var workers = ds.Query<Сотрудник>(Сотрудник.Views.СотрудникL);
            var workersActual = from w in workers
                                where w.Актуально
                                select w;
            ctrlПринявшийОператор.LimitFunction = 
                LinqToLcs.GetLcs(workersActual.Expression, Сотрудник.Views.СотрудникL).LimitFunction;
            ctrlОтветственныйСотрудник.LimitFunction =
                LinqToLcs.GetLcs(workersActual.Expression, Сотрудник.Views.СотрудникL).LimitFunction;
        }

        /// <summary>
        /// Здесь лучше всего изменять свойства контролов на странице,
        /// которые не обрабатываются WebBinder.
        /// </summary>
        protected override void PostApplyToControls()
        {
            ctrlТип.PropertyToShow = Information.ExtractPropertyPath<ТипОбращения>(t => t.Название);
            ctrlПервичное.PropertyToShow = Information.ExtractPropertyPath<Обращение>(t => t.Номер);
            ctrlОтветственныйСотрудник.PropertyToShow = Information.ExtractPropertyPath<Сотрудник>(t => t.ФИО);
            ctrlВид.PropertyToShow = Information.ExtractPropertyPath<ВидОбращени>(t => t.Название);
            ctrlПричина.PropertyToShow = Information.ExtractPropertyPath<ПричинаОбращения>(t => t.Название);
            ctrlПринявшийОператор.PropertyToShow = Information.ExtractPropertyPath<Сотрудник>(t => t.ФИО);
            if (IsPostBack)
            {
                Page.Validate();
            }

            ctrlТип.AddMasterLookup(ctrlВид, ctrlВидChanged);
        }

        //связанные лукапы (сначала выбираем вид!)
        private void ctrlВидChanged(string masterSelectedPk, ref string selectedPk, List<MasterLookup> masterLookups)
        {
            var ds = (SQLDataService)DataServiceProvider.DataService;
            //выбрали нужный вид обращения
            if(string.IsNullOrEmpty(masterSelectedPk))
            {
                selectedPk = string.Empty;
                return;
            }

            var kindApprove = ds.Query<ВидОбращени>(ВидОбращени.Views.ВидОбращениL)
                .First(v => v.__PrimaryKey.ToString() == masterSelectedPk);
            selectedPk = kindApprove.ТипОбращения.__PrimaryKey.ToString();
        }

        /// <summary>
        /// Вызывается самым последним в Page_Load.
        /// </summary>
        protected override void Postload()
        {
        }

        /// <summary>
        /// Валидация объекта для сохранения.
        /// </summary>
        /// <returns>true - продолжать сохранение, иначе - прекратить.</returns>
        protected override bool PreSaveObject()
        {
            return base.PreSaveObject();
        }

        /// <summary>
        /// Нетривиальная логика сохранения объекта.
        /// </summary>
        /// <returns>Объект данных, который сохранился.</returns>
        protected override DataObject SaveObject()
        {
            return base.SaveObject();
        }
    }
}