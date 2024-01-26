package androidx.room;

import androidx.sqlite.p011db.SupportSQLiteStatement;
/* loaded from: classes.dex */
public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t);

    public EntityInsertionAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public final void insert(T t) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t);
            acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }

    public final void insert(Iterable<? extends T> iterable) {
        SupportSQLiteStatement acquire = acquire();
        try {
            for (T t : iterable) {
                bind(acquire, t);
                acquire.executeInsert();
            }
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T t) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }
}
