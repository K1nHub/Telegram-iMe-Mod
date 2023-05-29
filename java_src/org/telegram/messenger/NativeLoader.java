package org.telegram.messenger;

import android.os.Build;
/* loaded from: classes4.dex */
public class NativeLoader {
    private static final String LIB_NAME = "tmessages.45";
    private static final String LIB_SO_NAME = "libtmessages.45.so";
    private static final int LIB_VERSION = 45;
    private static final String LOCALE_LIB_SO_NAME = "libtmessages.45loc.so";
    public static StringBuilder log = new StringBuilder();
    private static volatile boolean nativeLoaded = false;

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

    /* JADX WARN: Removed duplicated region for block: B:29:0x007b A[Catch: all -> 0x001d, TryCatch #1 {, blocks: (B:4:0x0003, B:35:0x00c4, B:38:0x00ce, B:9:0x000a, B:11:0x0016, B:17:0x0021, B:19:0x0052, B:21:0x0056, B:22:0x005b, B:27:0x0077, B:29:0x007b, B:30:0x00aa, B:26:0x0067), top: B:44:0x0003, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void initNativeLibs(android.content.Context r8) {
        /*
            java.lang.Class<org.telegram.messenger.NativeLoader> r0 = org.telegram.messenger.NativeLoader.class
            monitor-enter(r0)
            boolean r1 = org.telegram.messenger.NativeLoader.nativeLoaded     // Catch: java.lang.Throwable -> Le2
            if (r1 == 0) goto L9
            monitor-exit(r0)
            return
        L9:
            r1 = 1
            java.lang.String r2 = "tmessages.45"
            java.lang.System.loadLibrary(r2)     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L20
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L20
            boolean r2 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L20
            if (r2 == 0) goto L1b
            java.lang.String r2 = "loaded normal lib"
            org.telegram.messenger.FileLog.m52d(r2)     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L20
        L1b:
            monitor-exit(r0)
            return
        L1d:
            r8 = move-exception
            goto Lb2
        L20:
            r2 = move-exception
            org.telegram.messenger.FileLog.m49e(r2)     // Catch: java.lang.Throwable -> L1d
            java.lang.StringBuilder r3 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1d
            java.lang.String r4 = "129: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L1d
            r3.append(r2)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r2 = "\n"
            r3.append(r2)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r2 = getAbiFolder()     // Catch: java.lang.Throwable -> L1d
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L1d
            java.io.File r4 = r8.getFilesDir()     // Catch: java.lang.Throwable -> L1d
            java.lang.String r5 = "lib"
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L1d
            r3.mkdirs()     // Catch: java.lang.Throwable -> L1d
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L1d
            java.lang.String r5 = "libtmessages.45loc.so"
            r4.<init>(r3, r5)     // Catch: java.lang.Throwable -> L1d
            boolean r5 = r4.exists()     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto L77
            boolean r5 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L66
            if (r5 == 0) goto L5b
            java.lang.String r5 = "Load local lib"
            org.telegram.messenger.FileLog.m52d(r5)     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L66
        L5b:
            java.lang.String r5 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L66
            java.lang.System.load(r5)     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L66
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Throwable -> L1d java.lang.Error -> L66
            monitor-exit(r0)
            return
        L66:
            r5 = move-exception
            java.lang.StringBuilder r6 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1d
            r6.append(r5)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r7 = "\n"
            r6.append(r7)     // Catch: java.lang.Throwable -> L1d
            org.telegram.messenger.FileLog.m49e(r5)     // Catch: java.lang.Throwable -> L1d
            r4.delete()     // Catch: java.lang.Throwable -> L1d
        L77:
            boolean r5 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto Laa
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1d
            r5.<init>()     // Catch: java.lang.Throwable -> L1d
            java.lang.String r6 = "Library not found, arch = "
            r5.append(r6)     // Catch: java.lang.Throwable -> L1d
            r5.append(r2)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L1d
            org.telegram.messenger.FileLog.m51e(r5)     // Catch: java.lang.Throwable -> L1d
            java.lang.StringBuilder r5 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1d
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1d
            r6.<init>()     // Catch: java.lang.Throwable -> L1d
            java.lang.String r7 = "Library not found, arch = "
            r6.append(r7)     // Catch: java.lang.Throwable -> L1d
            r6.append(r2)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L1d
            r5.append(r6)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r6 = "\n"
            r5.append(r6)     // Catch: java.lang.Throwable -> L1d
        Laa:
            boolean r8 = loadFromZip(r8, r3, r4, r2)     // Catch: java.lang.Throwable -> L1d
            if (r8 == 0) goto Lc4
            monitor-exit(r0)
            return
        Lb2:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r2 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> Le2
            java.lang.String r3 = "177: "
            r2.append(r3)     // Catch: java.lang.Throwable -> Le2
            r2.append(r8)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r8 = "\n"
            r2.append(r8)     // Catch: java.lang.Throwable -> Le2
        Lc4:
            java.lang.String r8 = "tmessages.45"
            java.lang.System.loadLibrary(r8)     // Catch: java.lang.Error -> Lcd java.lang.Throwable -> Le2
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Error -> Lcd java.lang.Throwable -> Le2
            goto Le0
        Lcd:
            r8 = move-exception
            org.telegram.messenger.FileLog.m49e(r8)     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r1 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> Le2
            java.lang.String r2 = "185: "
            r1.append(r2)     // Catch: java.lang.Throwable -> Le2
            r1.append(r8)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r8 = "\n"
            r1.append(r8)     // Catch: java.lang.Throwable -> Le2
        Le0:
            monitor-exit(r0)
            return
        Le2:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.initNativeLibs(android.content.Context):void");
    }

    public static String getAbiFolder() {
        String str = "x86_64";
        String str2 = "armeabi";
        try {
            String str3 = Build.CPU_ABI;
            if (!str3.equalsIgnoreCase("x86_64")) {
                if (str3.equalsIgnoreCase("arm64-v8a")) {
                    str = "arm64-v8a";
                } else if (str3.equalsIgnoreCase("armeabi-v7a")) {
                    str = "armeabi-v7a";
                } else {
                    if (!str3.equalsIgnoreCase("armeabi")) {
                        if (str3.equalsIgnoreCase("x86")) {
                            str = "x86";
                        } else if (str3.equalsIgnoreCase("mips")) {
                            str = "mips";
                        } else if (BuildVars.LOGS_ENABLED) {
                            FileLog.m51e("Unsupported arch: " + str3);
                        }
                    }
                    str = "armeabi";
                }
            }
            str2 = str;
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        String property = System.getProperty("os.arch");
        return (property == null || !property.contains("686")) ? str2 : "x86";
    }

    public static boolean loaded() {
        return nativeLoaded;
    }
}
