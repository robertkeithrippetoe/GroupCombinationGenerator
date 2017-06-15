using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int holdGroupNumber = 0, roleNumber = 0, totalCombinations = 0, listNumber = 0;
    List<string> duplicateList = new List<string>();
    string[] intConversion = new String[10];
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        holdGroupNumber = Int32.Parse(DropDownList1.SelectedValue);
        //return holdGroupNumber;
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    int Factorial(int i)
    {
        if (i <= 1)
            return 1;
        return i * Factorial(i - 1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        holdGroupNumber = Int32.Parse(DropDownList1.SelectedValue);
        roleNumber = Int32.Parse(DropDownList2.SelectedValue);
        intConversion[0] = TextBox1.Text;
        intConversion[1] = TextBox2.Text;
        intConversion[2] = TextBox3.Text;
        intConversion[3] = TextBox4.Text;
        intConversion[4] = TextBox5.Text;
        intConversion[5] = TextBox6.Text;
        intConversion[6] = TextBox7.Text;
        intConversion[7] = TextBox8.Text;
        intConversion[8] = TextBox9.Text;
        intConversion[9] = TextBox10.Text;
        int[] entryArray = new int[roleNumber * holdGroupNumber];
        for (int i = 0; i < (holdGroupNumber); i++)
        {
            for (int j = 0; j < roleNumber; j++)
            {
                entryArray[(i * roleNumber) + j] = j;
                //Console.Write(roles[i + j]);
            }
        }
        int totalCombinations = Factorial(holdGroupNumber + roleNumber - 1) / (Factorial(holdGroupNumber) * Factorial(roleNumber - 1));
        Label txt2 = new Label();
        txt2.Text = "The total number of possible combinations is " + totalCombinations.ToString() + "<br>";
        form1.Controls.Add(txt2);
        printCombination(entryArray, entryArray.Length, holdGroupNumber);
    }

    void printCombination(int[] arr, int n, int r)
    {
        int[] data = new int[n];

        Array.Sort(arr);

        combinationCalc(arr, data, 0, n - 1, 0, r);
    }
    void combinationCalc(int[] arr, int[] data, int start, int end,
                     int index, int r)
    {
        string numberHolder = "";
        if (index == r)
        {
            for (int j = 0; j < r; j++)
            {
                numberHolder += (intConversion[data[j]] + " ");
            }
            if (!duplicateList.Contains(numberHolder))
            {
                listNumber++;
                duplicateList.Add(numberHolder);
                Label lab = new Label();
                lab.ID = "label" + numberHolder;
                lab.Text = listNumber.ToString() + ". " + numberHolder + "<br>";
                form1.Controls.Add(lab);
                return;
            }
        }
        for (int i = start; i <= end && end - i + 1 >= r - index; i++)
        {
            data[index] = arr[i];
            combinationCalc(arr, data, i + 1, end, index + 1, r);
        }
    }

}