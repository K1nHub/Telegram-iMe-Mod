package androidx.room;

import androidx.sqlite.p011db.SupportSQLiteStatement;
/* loaded from: classes.dex */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t);

    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public final int handle(T t) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }
}
