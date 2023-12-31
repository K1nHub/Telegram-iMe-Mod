package com.google.android.gms.internal.mlkit_common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzd {
    private static final String[] zza = {"com.android.", "com.google.", "com.chrome.", "com.nest.", "com.waymo.", "com.waze"};
    private static final String[] zzb;

    public static AssetFileDescriptor zza(Context context, Uri uri, String str) throws FileNotFoundException {
        return zza(context, uri, str, zzh.zza);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static AssetFileDescriptor zza(Context context, Uri uri, String str, zzh zzhVar) throws FileNotFoundException {
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse(uri.toString());
        String scheme = parse.getScheme();
        if ("android.resource".equals(scheme)) {
            return contentResolver.openAssetFileDescriptor(parse, str);
        }
        if ("content".equals(scheme)) {
            str.hashCode();
            char c = 65535;
            int i = 2;
            switch (str.hashCode()) {
                case 114:
                    if (str.equals("r")) {
                        c = 0;
                        break;
                    }
                    break;
                case 119:
                    if (str.equals("w")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3653:
                    if (str.equals("rw")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3805:
                    if (str.equals("wt")) {
                        c = 3;
                        break;
                    }
                    break;
                case 113359:
                    if (str.equals("rwt")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i = 1;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                    break;
                default:
                    throw new IllegalArgumentException();
            }
            if (!zza(context, parse, i, zzhVar)) {
                throw new FileNotFoundException("Can't open content uri.");
            }
            return (AssetFileDescriptor) zza(contentResolver.openAssetFileDescriptor(parse, str));
        } else if ("file".equals(scheme)) {
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) zza(contentResolver.openAssetFileDescriptor(parse, str));
            try {
                zza(context, assetFileDescriptor.getParcelFileDescriptor(), parse, zzhVar);
                return assetFileDescriptor;
            } catch (FileNotFoundException e) {
                zza(assetFileDescriptor, e);
                throw e;
            } catch (IOException e2) {
                FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                fileNotFoundException.initCause(e2);
                zza(assetFileDescriptor, fileNotFoundException);
                throw fileNotFoundException;
            }
        } else {
            throw new FileNotFoundException("Not implemented. Contact tiktok-users@");
        }
    }

    public static InputStream zza(Context context, Uri uri) throws FileNotFoundException {
        return zza(context, uri, zzh.zza);
    }

    private static InputStream zza(Context context, Uri uri, zzh zzhVar) throws FileNotFoundException {
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse(uri.toString());
        String scheme = parse.getScheme();
        if ("android.resource".equals(scheme)) {
            return contentResolver.openInputStream(parse);
        }
        if ("content".equals(scheme)) {
            if (!zza(context, parse, 1, zzhVar)) {
                throw new FileNotFoundException("Can't open content uri.");
            }
            return (InputStream) zza(contentResolver.openInputStream(parse));
        } else if ("file".equals(scheme)) {
            try {
                ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(Uri.fromFile(new File(parse.getPath()).getCanonicalFile()), "r");
                try {
                    zza(context, openFileDescriptor, parse, zzhVar);
                    return new ParcelFileDescriptor.AutoCloseInputStream(openFileDescriptor);
                } catch (FileNotFoundException e) {
                    zza(openFileDescriptor, e);
                    throw e;
                } catch (IOException e2) {
                    FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                    fileNotFoundException.initCause(e2);
                    zza(openFileDescriptor, fileNotFoundException);
                    throw fileNotFoundException;
                }
            } catch (IOException e3) {
                FileNotFoundException fileNotFoundException2 = new FileNotFoundException("Canonicalization failed.");
                fileNotFoundException2.initCause(e3);
                throw fileNotFoundException2;
            }
        } else {
            throw new FileNotFoundException("Not implemented. Contact tiktok-users@");
        }
    }

    private static boolean zza(Context context, Uri uri, int i, zzh zzhVar) {
        boolean z;
        String[] strArr;
        boolean z2;
        boolean z3;
        String authority = uri.getAuthority();
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
        if (resolveContentProvider == null) {
            int lastIndexOf = authority.lastIndexOf(64);
            if (lastIndexOf >= 0) {
                authority = authority.substring(lastIndexOf + 1);
                resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
            }
            if (resolveContentProvider == null) {
                z3 = zzhVar.zzc;
                return !z3;
            }
        }
        int i2 = zze.zza[zzh.zza(zzhVar, context, new zzr(uri, resolveContentProvider, authority)) - 1];
        if (i2 != 1) {
            if (i2 != 2) {
                if (context.getPackageName().equals(resolveContentProvider.packageName)) {
                    z2 = zzhVar.zzc;
                    return z2;
                }
                z = zzhVar.zzc;
                if (z) {
                    return false;
                }
                if (context.checkUriPermission(uri, Process.myPid(), Process.myUid(), i) == 0) {
                    return true;
                }
                for (String str : zzb) {
                    if (str.equals(authority)) {
                        return true;
                    }
                }
                if (resolveContentProvider.exported) {
                    for (String str2 : zza) {
                        if (str2.charAt(str2.length() - 1) == '.') {
                            if (resolveContentProvider.packageName.startsWith(str2)) {
                                return false;
                            }
                        } else if (resolveContentProvider.packageName.equals(str2)) {
                            return false;
                        }
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e3, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0108, code lost:
        if (r7 != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0110, code lost:
        if (r7 == r8) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(final android.content.Context r7, android.os.ParcelFileDescriptor r8, android.net.Uri r9, com.google.android.gms.internal.mlkit_common.zzh r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzd.zza(android.content.Context, android.os.ParcelFileDescriptor, android.net.Uri, com.google.android.gms.internal.mlkit_common.zzh):void");
    }

    private static File[] zza(Callable<File[]> callable) {
        try {
            return callable.call();
        } catch (NullPointerException e) {
            if (Build.VERSION.SDK_INT < 22) {
                return new File[0];
            }
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void zza(AssetFileDescriptor assetFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            assetFileDescriptor.close();
        } catch (IOException e) {
            zza(fileNotFoundException, e);
        }
    }

    private static void zza(ParcelFileDescriptor parcelFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            parcelFileDescriptor.close();
        } catch (IOException e) {
            zza(fileNotFoundException, e);
        }
    }

    private static void zza(Exception exc, Exception exc2) {
        if (Build.VERSION.SDK_INT >= 19) {
            zzan.zza(exc, exc2);
        }
    }

    private static <T> T zza(T t) throws FileNotFoundException {
        if (t != null) {
            return t;
        }
        throw new FileNotFoundException("Content resolver returned null value.");
    }

    static {
        String[] strArr = new String[4];
        boolean z = false;
        strArr[0] = "media";
        int i = Build.VERSION.SDK_INT;
        strArr[1] = i <= 25 ? "com.google.android.inputmethod.latin.inputcontent" : "";
        strArr[2] = i <= 25 ? "com.google.android.inputmethod.latin.dev.inputcontent" : "";
        String str = Build.HARDWARE;
        if (str.equals("goldfish") || str.equals("ranchu")) {
            z = true;
        }
        strArr[3] = z ? "com.google.android.apps.common.testing.services.storage.runfiles" : "";
        zzb = strArr;
    }
}
