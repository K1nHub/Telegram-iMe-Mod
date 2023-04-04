package org.telegram.messenger;
/* loaded from: classes4.dex */
public class NativeLoader {
    private static final String LIB_NAME = "tmessages.43";
    private static final String LIB_SO_NAME = "libtmessages.43.so";
    private static final int LIB_VERSION = 43;
    private static final String LOCALE_LIB_SO_NAME = "libtmessages.43loc.so";
    private static volatile boolean nativeLoaded = false;
    private String crashPath = "";

    private static native void init(String str, boolean z);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File getNativeLibraryDir(android.content.Context r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L1f
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L1b
            java.lang.Class<android.content.pm.ApplicationInfo> r2 = android.content.pm.ApplicationInfo.class
            java.lang.String r3 = "nativeLibraryDir"
            java.lang.reflect.Field r2 = r2.getField(r3)     // Catch: java.lang.Throwable -> L1b
            android.content.pm.ApplicationInfo r3 = r4.getApplicationInfo()     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L1b
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L1b
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1b
            goto L20
        L1b:
            r1 = move-exception
            r1.printStackTrace()
        L1f:
            r1 = r0
        L20:
            if (r1 != 0) goto L2f
            java.io.File r1 = new java.io.File
            android.content.pm.ApplicationInfo r4 = r4.getApplicationInfo()
            java.lang.String r4 = r4.dataDir
            java.lang.String r2 = "lib"
            r1.<init>(r4, r2)
        L2f:
            boolean r4 = r1.isDirectory()
            if (r4 == 0) goto L36
            return r1
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.getNativeLibraryDir(android.content.Context):java.io.File");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean loadFromZip(android.content.Context r5, java.io.File r6, java.io.File r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.loadFromZip(android.content.Context, java.io.File, java.io.File, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00db A[Catch: all -> 0x001d, TryCatch #3 {, blocks: (B:4:0x0003, B:65:0x00fa, B:68:0x0104, B:9:0x000a, B:11:0x0016, B:17:0x0021, B:18:0x0024, B:42:0x008e, B:44:0x0096, B:47:0x00a1, B:49:0x00bc, B:51:0x00c0, B:52:0x00c5, B:57:0x00d7, B:59:0x00db, B:60:0x00ef, B:56:0x00d1, B:21:0x0033, B:24:0x003e, B:27:0x0049, B:30:0x0054, B:33:0x0061, B:36:0x006c, B:38:0x0072, B:41:0x0089), top: B:78:0x0003, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void initNativeLibs(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.initNativeLibs(android.content.Context):void");
    }

    public static boolean loaded() {
        return nativeLoaded;
    }
}
