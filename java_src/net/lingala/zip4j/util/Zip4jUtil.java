package net.lingala.zip4j.util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import net.lingala.zip4j.exception.ZipException;
/* loaded from: classes6.dex */
public class Zip4jUtil {
    public static void setFileArchive(File file) throws ZipException {
    }

    public static void setFileHidden(File file) throws ZipException {
    }

    public static void setFileSystemMode(File file) throws ZipException {
    }

    public static boolean isStringNotNullAndNotEmpty(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean checkOutputFolder(String str) throws ZipException {
        if (!isStringNotNullAndNotEmpty(str)) {
            throw new ZipException(new NullPointerException("output path is null"));
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to output folder");
        }
        try {
            file.mkdirs();
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to destination folder");
        } catch (Exception unused) {
            throw new ZipException("Cannot create destination folder");
        }
    }

    public static boolean checkFileReadAccess(String str) throws ZipException {
        if (!isStringNotNullAndNotEmpty(str)) {
            throw new ZipException("path is null");
        }
        if (!checkFileExists(str)) {
            throw new ZipException("file does not exist: " + str);
        }
        try {
            return new File(str).canRead();
        } catch (Exception unused) {
            throw new ZipException("cannot read zip file");
        }
    }

    public static boolean checkFileExists(String str) throws ZipException {
        if (!isStringNotNullAndNotEmpty(str)) {
            throw new ZipException("path is null");
        }
        return checkFileExists(new File(str));
    }

    public static boolean checkFileExists(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("cannot check if file exists: input file is null");
        }
        return file.exists();
    }

    public static void setFileReadOnly(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null. cannot set read only file attribute");
        }
        if (file.exists()) {
            file.setReadOnly();
        }
    }

    public static long dosToJavaTme(int i) {
        int i2 = (i & 31) * 2;
        int i3 = (i >> 5) & 63;
        int i4 = (i >> 11) & 31;
        int i5 = (i >> 16) & 31;
        int i6 = ((i >> 25) & 127) + 1980;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i6, ((i >> 21) & 15) - 1, i5, i4, i3, i2);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static String decodeFileName(byte[] bArr, boolean z) {
        if (z) {
            try {
                return new String(bArr, "UTF8");
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        return getCp850EncodedString(bArr);
    }

    public static String getCp850EncodedString(byte[] bArr) {
        try {
            return new String(bArr, "Cp850");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }
}
