package androidx.sqlite.p011db;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: SupportSQLiteOpenHelper.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: SupportSQLiteOpenHelper.kt */
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

    /* compiled from: SupportSQLiteOpenHelper.kt */
    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Callback */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public final int version;

        static {
            new Companion(null);
        }

        public void onConfigure(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public void onOpen(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public abstract void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public Callback(int i) {
            this.version = i;
        }

        public void onCorruption(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + db + ".path");
            if (!db.isOpen()) {
                String path = db.getPath();
                if (path != null) {
                    deleteDatabaseFile(path);
                    return;
                }
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = db.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    db.close();
                } catch (IOException unused2) {
                    if (list != null) {
                        return;
                    }
                }
            } finally {
                if (list == null) {
                    String path2 = db.getPath();
                    if (path2 != null) {
                        deleteDatabaseFile(path2);
                    }
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        Object obj = ((Pair) it.next()).second;
                        Intrinsics.checkNotNullExpressionValue(obj, "p.second");
                        deleteDatabaseFile((String) obj);
                    }
                }
            }
        }

        private final void deleteDatabaseFile(String str) {
            boolean equals;
            equals = StringsKt__StringsJVMKt.equals(str, ":memory:", true);
            if (equals) {
                return;
            }
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i, length + 1).toString().length() == 0) {
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

        /* compiled from: SupportSQLiteOpenHelper.kt */
        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Callback$Companion */
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: SupportSQLiteOpenHelper.kt */
    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration */
    /* loaded from: classes.dex */
    public static final class Configuration {
        public static final Companion Companion = new Companion(null);
        public final Callback callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        public static final Builder builder(Context context) {
            return Companion.builder(context);
        }

        public Configuration(Context context, String str, Callback callback, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z;
        }

        /* compiled from: SupportSQLiteOpenHelper.kt */
        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder */
        /* loaded from: classes.dex */
        public static class Builder {
            private boolean allowDataLossOnRecovery;
            private Callback callback;
            private final Context context;
            private String name;
            private boolean useNoBackupDirectory;

            public Builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                this.context = context;
            }

            /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
                if ((r0 == null || r0.length() == 0) == false) goto L18;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public androidx.sqlite.p011db.SupportSQLiteOpenHelper.Configuration build() {
                /*
                    r7 = this;
                    androidx.sqlite.db.SupportSQLiteOpenHelper$Callback r3 = r7.callback
                    if (r3 == 0) goto L38
                    boolean r0 = r7.useNoBackupDirectory
                    r1 = 0
                    r2 = 1
                    if (r0 == 0) goto L1a
                    java.lang.String r0 = r7.name
                    if (r0 == 0) goto L17
                    int r0 = r0.length()
                    if (r0 != 0) goto L15
                    goto L17
                L15:
                    r0 = r1
                    goto L18
                L17:
                    r0 = r2
                L18:
                    if (r0 != 0) goto L1b
                L1a:
                    r1 = r2
                L1b:
                    if (r1 == 0) goto L2c
                    androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration r6 = new androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration
                    android.content.Context r1 = r7.context
                    java.lang.String r2 = r7.name
                    boolean r4 = r7.useNoBackupDirectory
                    boolean r5 = r7.allowDataLossOnRecovery
                    r0 = r6
                    r0.<init>(r1, r2, r3, r4, r5)
                    return r6
                L2c:
                    java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                    java.lang.String r1 = "Must set a non-null database name to a configuration that uses the no backup directory."
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                L38:
                    java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                    java.lang.String r1 = "Must set a callback to create the configuration."
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.p011db.SupportSQLiteOpenHelper.Configuration.Builder.build():androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration");
            }

            public Builder name(String str) {
                this.name = str;
                return this;
            }

            public Builder callback(Callback callback) {
                Intrinsics.checkNotNullParameter(callback, "callback");
                this.callback = callback;
                return this;
            }
        }

        /* compiled from: SupportSQLiteOpenHelper.kt */
        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Companion */
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Builder builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return new Builder(context);
            }
        }
    }
}
