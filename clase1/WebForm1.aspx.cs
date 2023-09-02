using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        public string nivelEducativo()
        {
            string nivelEducativo = "";
            if(CheckBox1.Checked)
            {
                nivelEducativo += CheckBox1.Text;
            }
            if (CheckBox2.Checked)
            {
                nivelEducativo += CheckBox2.Text;
            }
            // Se puede usar operador ternario
            nivelEducativo += CheckBox3.Checked ? CheckBox3.Text : "";


            return nivelEducativo;
        }

        

        protected void Btn_Aceptar(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && Nacionalidad.SelectedIndex >= 0 )
            {
                Mostrar.Text = $"Nombre: {TextBox1.Text}, " +
                    $"Apellido: {TextBox2.Text}, " +
                    $"{Nacionalidad.SelectedItem.Text}, " +
                    $"Nivel Educativo: {nivelEducativo()} ";
            }
        }

        protected void lista_nac_SelectedIndexChanged(object sender, EventArgs e)
        {
            string codPais = lista_nac.SelectedValue;
            lista_prov.Items.Clear();
            switch(codPais)
            {
                case "arg":
                    lista_prov.Items.Add(new ListItem("Cordoba", "cba"));
                    lista_prov.Items.Add(new ListItem("Misiones", "mis"));
                    lista_prov.Items.Add(new ListItem("Santa Fe", "sfe"));
                    break;
                case "uru":
                    lista_prov.Items.Add(new ListItem("prov 1", "p1"));
                    lista_prov.Items.Add(new ListItem("prov 2", "p2"));
                    lista_prov.Items.Add(new ListItem("prov 3", "'3"));
                    break;
            }
        }
    }
}