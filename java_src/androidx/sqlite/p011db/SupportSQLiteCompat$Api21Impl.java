package androidx.sqlite.p011db;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SupportSQLiteCompat.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api21Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api21Impl {
    static {
        new SupportSQLiteCompat$Api21Impl();
    }

    private SupportSQLiteCompat$Api21Impl() {
    }

    public static final File getNoBackupFilesDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
