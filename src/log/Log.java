package log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class Log {
    public void writeEror_to_txt(String path,String content) throws IOException{

        File F=new File(path);
        //如果文件不存在,就动态创建文件
        if(!F.exists()){
            F.createNewFile();
        }
        FileWriter fw=null;
        String writeDate=content;
        try {
            //设置为:True,表示写入的时候追加数据
            fw=new FileWriter(F, true);
            //回车并换行
            fw.write(writeDate+"\r\n");
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(fw!=null){
                fw.close();
            }
        }

    }

    //测试方法
    public static void main(String[] args) throws IOException {
        String path="E:/JAVA/workspace/Lab_Certificate/log4j.txt";
        String content = null;
        try{
//            String i="";
//            if(i==null){
//                System.out.println("111");
//                content="hello  你好!天天向上!";
//            }
//            String[] strings={"1","2","3"};
            List<String> list=new ArrayList<>();
            list.add("1");
            list.add("2");
            list.add("3");
            for(String  i:list){
                System.out.println(i);
            }
            //String j=list.get(3);
            System.out.println(list.get(0));
            //content=e.getClass().getName()+"  error Info  "+e.getMessage();
            content="加入字符成功";
        }catch (Exception e){
            //content=e.getClass().getName()+"  error Info  "+e.getMessage();
            e.printStackTrace();
//            content=e.getMessage();
        }
        Log4j le=new Log4j();
        le.writeEror_to_txt(path, content);
    }
}
