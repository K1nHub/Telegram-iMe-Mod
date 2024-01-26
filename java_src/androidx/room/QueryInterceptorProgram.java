package androidx.room;

import androidx.sqlite.p011db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    private List<Object> mBindArgsCache = new ArrayList();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteProgram
    public void bindNull(int i) {
        saveArgsToCache(i, null);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteProgram
    public void bindLong(int i, long j) {
        saveArgsToCache(i, Long.valueOf(j));
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteProgram
    public void bindDouble(int i, double d) {
        saveArgsToCache(i, Double.valueOf(d));
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteProgram
    public void bindString(int i, String str) {
        saveArgsToCache(i, str);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteProgram
    public void bindBlob(int i, byte[] bArr) {
        saveArgsToCache(i, bArr);
    }

    private void saveArgsToCache(int i, Object obj) {
        int i2 = i - 1;
        if (i2 >= this.mBindArgsCache.size()) {
            for (int size = this.mBindArgsCache.size(); size <= i2; size++) {
                this.mBindArgsCache.add(null);
            }
        }
        this.mBindArgsCache.set(i2, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Object> getBindArgs() {
        return this.mBindArgsCache;
    }
}
