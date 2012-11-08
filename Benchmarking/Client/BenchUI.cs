using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Client.ServiceReference1;
using SchedulingBenchmarking;

namespace Client
{
    public partial class BenchUI : Form
    {
        public BenchUI()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (Service1Client client = new Service1Client())
            {
                label2.Text = "Requesting status";
                int status = client.RequestStatus();
                label2.Text = "" + status + " Cores available";

            }
        }



        private void button2_Click(object sender, EventArgs e)
        {
            using (Service1Client client = new Service1Client())
            {
                if (nameBox.Text.Length == 0 || CpuBox.Text.Length == 0 || RuntimeBox.Text.Length == 0)
                {
                    label7.Text = "Error";
                    return;
                }
               
                

                
                label7.Text = "Submitting";
                bool status = client.ReceiveJob(int.Parse(CpuBox.Text), int.Parse(RuntimeBox.Text), nameBox.Text);
                if (status) label7.Text = "Succes";
                else label7.Text = "Error"; 

            }
        }

        private void reFresh()
        {
            listBox1.Items.Clear();
            progressBar.Visible = true;
            progressBar.Value = 0;
            progressBar.Increment(50);
            using (Service1Client client = new Service1Client())
            {
                listBox1.Items.AddRange(client.GetJobsList(nameBox.Text));
                progressBar.Increment(50);
                if (listBox1.Items.Count == 0) listBox1.Items.Add("No jobs found on server.");

                listBox1.Refresh();
            }

        }

        public static void Main(String[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new BenchUI());
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (nameBox.Text.Length == 0)
            {
                listBox1.Items.Clear();
                listBox1.Items.Add("Please enter owner name!");
                return;
            }
            reFresh();
        }


    }


      
    }

