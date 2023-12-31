package androidx.sqlite.p011db;

import java.io.Closeable;
/* compiled from: SupportSQLiteProgram.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteProgram */
/* loaded from: classes.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i, byte[] bArr);

    void bindDouble(int i, double d);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindString(int i, String str);
}
