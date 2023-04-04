package com.iMe.storage.data.utils.extentions;

import android.graphics.Bitmap;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitmapExt.kt */
/* loaded from: classes3.dex */
public final class BitmapExtKt {
    public static /* synthetic */ File toTempFile$default(Bitmap bitmap, File file, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "temp.jpeg";
        }
        return toTempFile(bitmap, file, str);
    }

    public static final File toTempFile(Bitmap bitmap, File parent, String fileName) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File file = new File(parent, fileName);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
        bufferedOutputStream.close();
        return file;
    }
}
