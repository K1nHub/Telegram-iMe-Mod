package net.lingala.zip4j.util;
/* loaded from: classes6.dex */
public interface InternalZipConstants {
    public static final String FILE_SEPARATOR;

    static {
        System.getProperty("file.encoding");
        FILE_SEPARATOR = System.getProperty("file.separator");
    }
}
