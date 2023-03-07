package androidx.sqlite.p011db;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Factory */
    /* loaded from: classes.dex */
    public interface Factory {
        SupportSQLiteOpenHelper create(Configuration configuration);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Callback */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public final int version;

        public void onConfigure(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public abstract void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public Callback(int i) {
            this.version = i;
        }

        public void onCorruption(SupportSQLiteDatabase supportSQLiteDatabase) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + supportSQLiteDatabase.getPath());
            if (!supportSQLiteDatabase.isOpen()) {
                deleteDatabaseFile(supportSQLiteDatabase.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = supportSQLiteDatabase.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    supportSQLiteDatabase.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (list != null) {
                    for (Pair<String, String> next : list) {
                        deleteDatabaseFile((String) next.second);
                    }
                } else {
                    deleteDatabaseFile(supportSQLiteDatabase.getPath());
                }
            }
        }

        private void deleteDatabaseFile(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SupportSQLiteCompat$Api16Impl.deleteDatabase(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                    }
                }
            } catch (Exception e2) {
                Log.w("SupportSQLite", "delete failed: ", e2);
            }
        }
    }

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration */
    /* loaded from: classes.dex */
    public static class Configuration {
        public final Callback callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        Configuration(Context context, String str, Callback callback, boolean z) {
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z;
        }

        public static Builder builder(Context context) {
            return new Builder(context);
        }

        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder */
        /* loaded from: classes.dex */
        public static class Builder {
            Callback mCallback;
            Context mContext;
            String mName;
            boolean mUseNoBackupDirectory;

            public Configuration build() {
                if (this.mCallback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.mContext == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                if (this.mUseNoBackupDirectory && TextUtils.isEmpty(this.mName)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new Configuration(this.mContext, this.mName, this.mCallback, this.mUseNoBackupDirectory);
            }

            Builder(Context context) {
                this.mContext = context;
            }

            public Builder name(String str) {
                this.mName = str;
                return this;
            }

            public Builder callback(Callback callback) {
                this.mCallback = callback;
                return this;
            }
        }
    }
}
