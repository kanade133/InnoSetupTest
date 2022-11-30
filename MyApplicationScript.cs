using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyApplicationScript
{
    class MyApplicationScript
    {
        static void Main(string[] args)
        {
            string jsonFilePath = args[0];
            string productPath = args[1];
            string version = args[2];
            productPath = productPath.Replace("\\", "\\\\");

            string[] lines = System.IO.File.ReadAllLines(jsonFilePath);
            for (int i = 1; i < lines.Length - 1; i++)//去头尾
            {
                string line = lines[i];
                var indexs = new List<int>();
                for (int j = 0; j < line.Length; j++)
                {
                    if (line[j] == '"')
                    {
                        indexs.Add(j);
                    }
                }
                int indexKey = indexs[0] + 1;
                int lengthKey = indexs[1] - indexs[0] - 1;
                int indexValue = indexs[2] + 1;
                int lengthValue = indexs[3] - indexs[2] - 1;
                string key = line.Substring(indexKey, lengthKey);
                if (key == "ProductPath")
                {
                    line = line.Remove(indexValue, lengthValue);
                    line = line.Insert(indexValue, productPath);
                    lines[i] = line;
                }
                if (key == "Version" || key == "NewVersion")
                {
                    line = line.Remove(indexValue, lengthValue);
                    line = line.Insert(indexValue, version);
                    lines[i] = line;
                }
            }

            System.IO.File.WriteAllLines(jsonFilePath, lines);

            //复制文件到用户目录
            string folderPath = System.IO.Path.Combine(Environment.GetEnvironmentVariable("Appdata"), "MyApplicationProduct");
            string destPath = System.IO.Path.Combine(folderPath, System.IO.Path.GetFileName(jsonFilePath));
            if (!System.IO.Directory.Exists(folderPath))
            {
                System.IO.Directory.CreateDirectory(folderPath);
            }
            System.IO.File.Copy(jsonFilePath, destPath, true);

            //复制文件到ProgramData目录
            folderPath = System.IO.Path.Combine(Environment.GetEnvironmentVariable("ProgramData"), "MyApplicationProduct");
            destPath = System.IO.Path.Combine(folderPath, System.IO.Path.GetFileName(jsonFilePath));
            if (!System.IO.Directory.Exists(folderPath))
            {
                System.IO.Directory.CreateDirectory(folderPath);
            }
            System.IO.File.Copy(jsonFilePath, destPath, true);

        }
    }
}
