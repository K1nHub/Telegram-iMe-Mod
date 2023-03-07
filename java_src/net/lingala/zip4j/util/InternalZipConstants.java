package net.lingala.zip4j.util;
/* loaded from: classes4.dex */
public interface InternalZipConstants {
    public static final String FILE_SEPARATOR;

    static {
        System.getProperty("file.encoding");
        FILE_SEPARATOR = System.getProperty("file.separator");
    }
}
