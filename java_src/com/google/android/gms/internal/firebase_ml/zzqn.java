package com.google.android.gms.internal.firebase_ml;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.provider.MediaStore;
import com.google.android.gms.common.internal.GmsLogger;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class zzqn {
    private static final GmsLogger zzass = new GmsLogger("MLKitImageUtils", "");
    private static zzqn zzbbj = new zzqn();

    private zzqn() {
    }

    public static zzqn zznn() {
        return zzbbj;
    }

    public static Bitmap zza(ContentResolver contentResolver, Uri uri) throws IOException {
        Bitmap createBitmap;
        try {
            Bitmap bitmap = MediaStore.Images.Media.getBitmap(contentResolver, uri);
            int zzb = zzb(contentResolver, uri);
            Matrix matrix = new Matrix();
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            Matrix matrix2 = null;
            switch (zzb) {
                case 2:
                    Matrix matrix3 = new Matrix();
                    matrix3.postScale(-1.0f, 1.0f);
                    matrix2 = matrix3;
                    break;
                case 3:
                    matrix.postRotate(180.0f);
                    matrix2 = matrix;
                    break;
                case 4:
                    matrix.postScale(1.0f, -1.0f);
                    matrix2 = matrix;
                    break;
                case 5:
                    matrix.postRotate(90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    matrix2 = matrix;
                    break;
                case 6:
                    matrix.postRotate(90.0f);
                    matrix2 = matrix;
                    break;
                case 7:
                    matrix.postRotate(-90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    matrix2 = matrix;
                    break;
                case 8:
                    matrix.postRotate(-90.0f);
                    matrix2 = matrix;
                    break;
            }
            if (matrix2 == null || bitmap == (createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix2, true))) {
                return bitmap;
            }
            bitmap.recycle();
            return createBitmap;
        } catch (FileNotFoundException e) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(uri.toString());
            gmsLogger.m1096e("MLKitImageUtils", valueOf.length() != 0 ? "Could not open file: ".concat(valueOf) : new String("Could not open file: "), e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(android.content.ContentResolver r5, android.net.Uri r6) {
        /*
            java.lang.String r0 = r6.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r1.equals(r0)
            r1 = 0
            if (r0 != 0) goto L1a
            java.lang.String r0 = r6.getScheme()
            java.lang.String r2 = "file"
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L1a
            return r1
        L1a:
            r0 = 0
            java.io.InputStream r5 = r5.openInputStream(r6)     // Catch: java.io.IOException -> L3b
            androidx.exifinterface.media.ExifInterface r2 = new androidx.exifinterface.media.ExifInterface     // Catch: java.lang.Throwable -> L2d
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L2d
            if (r5 == 0) goto L5f
            r5.close()     // Catch: java.io.IOException -> L2a
            goto L5f
        L2a:
            r5 = move-exception
            r0 = r2
            goto L3c
        L2d:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L2f
        L2f:
            r3 = move-exception
            if (r5 == 0) goto L3a
            r5.close()     // Catch: java.lang.Throwable -> L36
            goto L3a
        L36:
            r5 = move-exception
            com.google.android.gms.internal.firebase_ml.zzlm.zza(r2, r5)     // Catch: java.io.IOException -> L3b
        L3a:
            throw r3     // Catch: java.io.IOException -> L3b
        L3b:
            r5 = move-exception
        L3c:
            com.google.android.gms.common.internal.GmsLogger r2 = com.google.android.gms.internal.firebase_ml.zzqn.zzass
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r3 = r6.length()
            int r3 = r3 + 48
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            java.lang.String r3 = "failed to open file to read rotation meta data: "
            r4.append(r3)
            r4.append(r6)
            java.lang.String r6 = r4.toString()
            java.lang.String r3 = "MLKitImageUtils"
            r2.m1096e(r3, r6, r5)
            r2 = r0
        L5f:
            if (r2 != 0) goto L62
            return r1
        L62:
            r5 = 1
            java.lang.String r6 = "Orientation"
            int r5 = r2.getAttributeInt(r6, r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzqn.zzb(android.content.ContentResolver, android.net.Uri):int");
    }
}
