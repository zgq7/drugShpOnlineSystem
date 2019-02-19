package com.dsos.utils;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by zgq7 on 2019/2/19 0019.
 * 文件工具类
 */
public class OprateFileUtils {

    private static final Logger log = LoggerFactory.getLogger(OprateFileUtils.class);

    /**
     * @param dataRoot 数据文件夹
     * @param fileName 文件名
     * @param file     上传的文件
     * @return 文件写入状态
     **/
    public static Boolean writeFile(String dataRoot, String fileName, MultipartFile file) {
        try {
            FileUtils.touch(new File(dataRoot));
            FileOutputStream stream = new FileOutputStream(dataRoot + fileName);
            stream.write(file.getBytes());
            stream.close();
            //判断文件是否存在
            if (FileUtils.directoryContains(new File(dataRoot), new File(fileName)))
                return false;
        } catch (IOException e) {
            log.error("utils of write file error : {}", e.getMessage());
            return false;
        }
        return true;
    }

    /**
     * @param dataRoot    文件的全路径
     * @param oldFileName 需删除的文件名
     * @return 文件删除状态
     **/
    public static Boolean deleteFile(String dataRoot, String oldFileName) {
        try {
            FileUtils.deleteQuietly(new File(dataRoot, oldFileName));
            if (FileUtils.directoryContains(new File(dataRoot), new File(oldFileName)))
                return false;
        } catch (Exception e) {
            log.error("Utils of delete file error : {}", e.getMessage());
            return false;
        }
        return true;
    }
}
