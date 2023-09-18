package net.lingala.zip4j.unzip;

import java.io.File;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.util.Zip4jUtil;
/* loaded from: classes6.dex */
public class UnzipUtil {
    public static void applyFileAttributes(FileHeader fileHeader, File file, UnzipParameters unzipParameters) throws ZipException {
        if (fileHeader == null) {
            throw new ZipException("cannot set file properties: file header is null");
        }
        if (file == null) {
            throw new ZipException("cannot set file properties: output file is null");
        }
        if (!Zip4jUtil.checkFileExists(file)) {
            throw new ZipException("cannot set file properties: file doesnot exist");
        }
        setFileLastModifiedTime(fileHeader, file);
        setFileAttributes(fileHeader, file, true, true, true, true);
    }

    private static void setFileAttributes(FileHeader fileHeader, File file, boolean z, boolean z2, boolean z3, boolean z4) throws ZipException {
        if (fileHeader == null) {
            throw new ZipException("invalid file header. cannot set file attributes");
        }
        byte[] externalFileAttr = fileHeader.getExternalFileAttr();
        if (externalFileAttr == null) {
            return;
        }
        byte b = externalFileAttr[0];
        if (b == 1) {
            if (z) {
                Zip4jUtil.setFileReadOnly(file);
                return;
            }
            return;
        }
        if (b != 2) {
            if (b == 3) {
                if (z) {
                    Zip4jUtil.setFileReadOnly(file);
                }
                if (z2) {
                    Zip4jUtil.setFileHidden(file);
                    return;
                }
                return;
            } else if (b != 18) {
                if (b == 38) {
                    if (z) {
                        Zip4jUtil.setFileReadOnly(file);
                    }
                    if (z2) {
                        Zip4jUtil.setFileHidden(file);
                    }
                    if (z4) {
                        Zip4jUtil.setFileSystemMode(file);
                        return;
                    }
                    return;
                }
                if (b != 48) {
                    if (b != 50) {
                        switch (b) {
                            case 32:
                                break;
                            case 33:
                                if (z3) {
                                    Zip4jUtil.setFileArchive(file);
                                }
                                if (z) {
                                    Zip4jUtil.setFileReadOnly(file);
                                    return;
                                }
                                return;
                            case 34:
                                break;
                            case 35:
                                if (z3) {
                                    Zip4jUtil.setFileArchive(file);
                                }
                                if (z) {
                                    Zip4jUtil.setFileReadOnly(file);
                                }
                                if (z2) {
                                    Zip4jUtil.setFileHidden(file);
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                    }
                    if (z3) {
                        Zip4jUtil.setFileArchive(file);
                    }
                    if (z2) {
                        Zip4jUtil.setFileHidden(file);
                        return;
                    }
                    return;
                }
                if (z3) {
                    Zip4jUtil.setFileArchive(file);
                    return;
                }
                return;
            }
        }
        if (z2) {
            Zip4jUtil.setFileHidden(file);
        }
    }

    private static void setFileLastModifiedTime(FileHeader fileHeader, File file) throws ZipException {
        if (fileHeader.getLastModFileTime() > 0 && file.exists()) {
            file.setLastModified(Zip4jUtil.dosToJavaTme(fileHeader.getLastModFileTime()));
        }
    }
}
