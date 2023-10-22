package org.telegram.messenger;

import android.os.Build;
/* loaded from: classes4.dex */
public class NativeLoader {
    private static final String LIB_NAME = "tmessages.46";
    private static final String LIB_SO_NAME = "libtmessages.46.so";
    private static final int LIB_VERSION = 46;
    private static final String LOCALE_LIB_SO_NAME = "libtmessages.46loc.so";
    public static StringBuilder log = new StringBuilder();
    private static volatile boolean nativeLoaded = false;

    private static native void init(String str, boolean z);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File getNativeLibraryDir(android.content.Context r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L20
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L1c
            java.lang.Class<android.content.pm.ApplicationInfo> r2 = android.content.pm.ApplicationInfo.class
            java.lang.String r3 = "nativeLibraryDir"
            java.lang.reflect.Field r2 = r2.getField(r3)     // Catch: java.lang.Throwable -> L1c
            android.content.pm.ApplicationInfo r3 = r4.getApplicationInfo()     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L1c
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c
            goto L21
        L1c:
            r1 = move-exception
            r1.printStackTrace()
        L20:
            r1 = r0
        L21:
            if (r1 != 0) goto L31
            java.io.File r1 = new java.io.File
            android.content.pm.ApplicationInfo r4 = r4.getApplicationInfo()
            java.lang.String r4 = r4.dataDir
            java.lang.String r2 = "lib"
            r1.<init>(r4, r2)
        L31:
            boolean r4 = r1.isDirectory()
            if (r4 == 0) goto L38
            return r1
        L38:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.getNativeLibraryDir(android.content.Context):java.io.File");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean loadFromZip(android.content.Context r5, java.io.File r6, java.io.File r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NativeLoader.loadFromZip(android.content.Context, java.io.File, java.io.File, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007e A[Catch: all -> 0x001e, TryCatch #2 {, blocks: (B:4:0x0003, B:35:0x00c7, B:38:0x00d1, B:9:0x000a, B:11:0x0016, B:17:0x0022, B:19:0x0055, B:21:0x0059, B:22:0x005e, B:27:0x007a, B:29:0x007e, B:30:0x00ad, B:26:0x006a), top: B:46:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void initNativeLibs(android.content.Context r8) {
        /*
            java.lang.Class<org.telegram.messenger.NativeLoader> r0 = org.telegram.messenger.NativeLoader.class
            monitor-enter(r0)
            boolean r1 = org.telegram.messenger.NativeLoader.nativeLoaded     // Catch: java.lang.Throwable -> Le5
            if (r1 == 0) goto L9
            monitor-exit(r0)
            return
        L9:
            r1 = 1
            java.lang.String r2 = "tmessages.46"
            java.lang.System.loadLibrary(r2)     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L21
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L21
            boolean r2 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L21
            if (r2 == 0) goto L1c
            java.lang.String r2 = "loaded normal lib"
            org.telegram.messenger.FileLog.m100d(r2)     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L21
        L1c:
            monitor-exit(r0)
            return
        L1e:
            r8 = move-exception
            goto Lb5
        L21:
            r2 = move-exception
            org.telegram.messenger.FileLog.m97e(r2)     // Catch: java.lang.Throwable -> L1e
            java.lang.StringBuilder r3 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1e
            java.lang.String r4 = "128: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L1e
            r3.append(r2)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r2 = "\n"
            r3.append(r2)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r2 = getAbiFolder()     // Catch: java.lang.Throwable -> L1e
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L1e
            java.io.File r4 = r8.getFilesDir()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r5 = "lib"
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L1e
            r3.mkdirs()     // Catch: java.lang.Throwable -> L1e
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L1e
            java.lang.String r5 = "libtmessages.46loc.so"
            r4.<init>(r3, r5)     // Catch: java.lang.Throwable -> L1e
            boolean r5 = r4.exists()     // Catch: java.lang.Throwable -> L1e
            if (r5 == 0) goto L7a
            boolean r5 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L69
            if (r5 == 0) goto L5e
            java.lang.String r5 = "Load local lib"
            org.telegram.messenger.FileLog.m100d(r5)     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L69
        L5e:
            java.lang.String r5 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L69
            java.lang.System.load(r5)     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L69
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Throwable -> L1e java.lang.Error -> L69
            monitor-exit(r0)
            return
        L69:
            r5 = move-exception
            java.lang.StringBuilder r6 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1e
            r6.append(r5)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r7 = "\n"
            r6.append(r7)     // Catch: java.lang.Throwable -> L1e
            org.telegram.messenger.FileLog.m97e(r5)     // Catch: java.lang.Throwable -> L1e
            r4.delete()     // Catch: java.lang.Throwable -> L1e
        L7a:
            boolean r5 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Throwable -> L1e
            if (r5 == 0) goto Lad
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1e
            r5.<init>()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r6 = "Library not found, arch = "
            r5.append(r6)     // Catch: java.lang.Throwable -> L1e
            r5.append(r2)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L1e
            org.telegram.messenger.FileLog.m99e(r5)     // Catch: java.lang.Throwable -> L1e
            java.lang.StringBuilder r5 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> L1e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1e
            r6.<init>()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r7 = "Library not found, arch = "
            r6.append(r7)     // Catch: java.lang.Throwable -> L1e
            r6.append(r2)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L1e
            r5.append(r6)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r6 = "\n"
            r5.append(r6)     // Catch: java.lang.Throwable -> L1e
        Lad:
            boolean r8 = loadFromZip(r8, r3, r4, r2)     // Catch: java.lang.Throwable -> L1e
            if (r8 == 0) goto Lc7
            monitor-exit(r0)
            return
        Lb5:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> Le5
            java.lang.StringBuilder r2 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> Le5
            java.lang.String r3 = "176: "
            r2.append(r3)     // Catch: java.lang.Throwable -> Le5
            r2.append(r8)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r8 = "\n"
            r2.append(r8)     // Catch: java.lang.Throwable -> Le5
        Lc7:
            java.lang.String r8 = "tmessages.46"
            java.lang.System.loadLibrary(r8)     // Catch: java.lang.Error -> Ld0 java.lang.Throwable -> Le5
            org.telegram.messenger.NativeLoader.nativeLoaded = r1     // Catch: java.lang.Error -> Ld0 java.lang.Throwable -> Le5
            goto Le3
        Ld0:
            r8 = move-exception
            org.telegram.messenger.FileLog.m97e(r8)     // Catch: java.lang.Throwable -> Le5
            java.lang.StringBuilder r1 = org.telegram.messenger.NativeLoader.log     // Catch: java.lang.Throwable -> Le5
            java.lang.String r2 = "184: "
            r1.append(r2)     // Catch: java.lang.Throwable -> Le5
            r1.append(r8)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r8 = "\n"
            r1.append(r8)     // Catch: java.lang.Throwable -> Le5
        Le3:
            monitor-exit(r0)
            return
        Le5:
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
                            FileLog.m99e("Unsupported arch: " + str3);
                        }
                    }
                    str = "armeabi";
                }
            }
            str2 = str;
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        String property = System.getProperty("os.arch");
        return (property == null || !property.contains("686")) ? str2 : "x86";
    }

    public static boolean loaded() {
        return nativeLoaded;
    }
}
