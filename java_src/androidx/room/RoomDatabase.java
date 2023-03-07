package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.util.Function;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.sqlite.p011db.SupportSQLiteCompat$Api19Impl;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteOpenHelper;
import androidx.sqlite.p011db.SupportSQLiteQuery;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import androidx.sqlite.p011db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p034j$.util.DesugarCollections;
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    private boolean mAllowMainThreadQueries;
    private AutoCloser mAutoCloser;
    protected Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> mAutoMigrationSpecs;
    @Deprecated
    protected List<Callback> mCallbacks;
    @Deprecated
    protected volatile SupportSQLiteDatabase mDatabase;
    private final InvalidationTracker mInvalidationTracker;
    private SupportSQLiteOpenHelper mOpenHelper;
    private Executor mQueryExecutor;
    private Executor mTransactionExecutor;
    private final Map<Class<?>, Object> mTypeConverters;
    private final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> mSuspendingTransactionId = new ThreadLocal<>();

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onDestructiveMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class PrepackagedDatabaseCallback {
    }

    /* loaded from: classes.dex */
    public interface QueryCallback {
        void onQuery(String str, List<Object> list);
    }

    protected abstract InvalidationTracker createInvalidationTracker();

    protected abstract SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Lock getCloseLock() {
        return this.mCloseLock.readLock();
    }

    public RoomDatabase() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.mInvalidationTracker = createInvalidationTracker();
        this.mTypeConverters = new HashMap();
        this.mAutoMigrationSpecs = new HashMap();
    }

    public void init(DatabaseConfiguration databaseConfiguration) {
        this.mOpenHelper = createOpenHelper(databaseConfiguration);
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        BitSet bitSet = new BitSet();
        Iterator<Class<? extends AutoMigrationSpec>> it = requiredAutoMigrationSpecs.iterator();
        while (true) {
            int i = -1;
            if (it.hasNext()) {
                Class<? extends AutoMigrationSpec> next = it.next();
                int size = databaseConfiguration.autoMigrationSpecs.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (next.isAssignableFrom(databaseConfiguration.autoMigrationSpecs.get(size).getClass())) {
                        bitSet.set(size);
                        i = size;
                        break;
                    } else {
                        size--;
                    }
                }
                if (i < 0) {
                    throw new IllegalArgumentException("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.");
                }
                this.mAutoMigrationSpecs.put(next, databaseConfiguration.autoMigrationSpecs.get(i));
            } else {
                for (int size2 = databaseConfiguration.autoMigrationSpecs.size() - 1; size2 >= 0; size2--) {
                    if (!bitSet.get(size2)) {
                        throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                    }
                }
                Iterator<Migration> it2 = getAutoMigrations(this.mAutoMigrationSpecs).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Migration next2 = it2.next();
                    if (!databaseConfiguration.migrationContainer.getMigrations().containsKey(Integer.valueOf(next2.startVersion))) {
                        databaseConfiguration.migrationContainer.addMigrations(next2);
                    }
                }
                SQLiteCopyOpenHelper sQLiteCopyOpenHelper = (SQLiteCopyOpenHelper) unwrapOpenHelper(SQLiteCopyOpenHelper.class, this.mOpenHelper);
                if (sQLiteCopyOpenHelper != null) {
                    sQLiteCopyOpenHelper.setDatabaseConfiguration(databaseConfiguration);
                }
                AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) unwrapOpenHelper(AutoClosingRoomOpenHelper.class, this.mOpenHelper);
                if (autoClosingRoomOpenHelper != null) {
                    AutoCloser autoCloser = autoClosingRoomOpenHelper.getAutoCloser();
                    this.mAutoCloser = autoCloser;
                    this.mInvalidationTracker.setAutoCloser(autoCloser);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    this.mOpenHelper.setWriteAheadLoggingEnabled(databaseConfiguration.journalMode == JournalMode.WRITE_AHEAD_LOGGING);
                }
                this.mCallbacks = databaseConfiguration.callbacks;
                this.mQueryExecutor = databaseConfiguration.queryExecutor;
                this.mTransactionExecutor = new TransactionExecutor(databaseConfiguration.transactionExecutor);
                this.mAllowMainThreadQueries = databaseConfiguration.allowMainThreadQueries;
                Intent intent = databaseConfiguration.multiInstanceInvalidationServiceIntent;
                if (intent != null) {
                    this.mInvalidationTracker.startMultiInstanceInvalidation(databaseConfiguration.context, databaseConfiguration.name, intent);
                }
                Map<Class<?>, List<Class<?>>> requiredTypeConverters = getRequiredTypeConverters();
                BitSet bitSet2 = new BitSet();
                for (Map.Entry<Class<?>, List<Class<?>>> entry : requiredTypeConverters.entrySet()) {
                    Class<?> key = entry.getKey();
                    for (Class<?> cls : entry.getValue()) {
                        int size3 = databaseConfiguration.typeConverters.size() - 1;
                        while (true) {
                            if (size3 < 0) {
                                size3 = -1;
                                break;
                            } else if (cls.isAssignableFrom(databaseConfiguration.typeConverters.get(size3).getClass())) {
                                bitSet2.set(size3);
                                break;
                            } else {
                                size3--;
                            }
                        }
                        if (size3 < 0) {
                            throw new IllegalArgumentException("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                        }
                        this.mTypeConverters.put(cls, databaseConfiguration.typeConverters.get(size3));
                    }
                }
                for (int size4 = databaseConfiguration.typeConverters.size() - 1; size4 >= 0; size4--) {
                    if (!bitSet2.get(size4)) {
                        throw new IllegalArgumentException("Unexpected type converter " + databaseConfiguration.typeConverters.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                }
                return;
            }
        }
    }

    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T unwrapOpenHelper(Class<T> cls, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (cls.isInstance(supportSQLiteOpenHelper)) {
            return supportSQLiteOpenHelper;
        }
        if (supportSQLiteOpenHelper instanceof DelegatingOpenHelper) {
            return (T) unwrapOpenHelper(cls, ((DelegatingOpenHelper) supportSQLiteOpenHelper).getDelegate());
        }
        return null;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        return this.mOpenHelper;
    }

    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return Collections.emptyMap();
    }

    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return Collections.emptySet();
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        SupportSQLiteDatabase supportSQLiteDatabase = this.mDatabase;
        return supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen();
    }

    public void assertNotMainThread() {
        if (!this.mAllowMainThreadQueries && isMainThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (!inTransaction() && this.mSuspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
        return query(supportSQLiteQuery, null);
    }

    public Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (cancellationSignal != null && Build.VERSION.SDK_INT >= 16) {
            return this.mOpenHelper.getWritableDatabase().query(supportSQLiteQuery, cancellationSignal);
        }
        return this.mOpenHelper.getWritableDatabase().query(supportSQLiteQuery);
    }

    public SupportSQLiteStatement compileStatement(String str) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return this.mOpenHelper.getWritableDatabase().compileStatement(str);
    }

    @Deprecated
    public void beginTransaction() {
        assertNotMainThread();
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser == null) {
            internalBeginTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Object lambda$beginTransaction$0;
                    lambda$beginTransaction$0 = RoomDatabase.this.lambda$beginTransaction$0((SupportSQLiteDatabase) obj);
                    return lambda$beginTransaction$0;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$beginTransaction$0(SupportSQLiteDatabase supportSQLiteDatabase) {
        internalBeginTransaction();
        return null;
    }

    private void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        this.mInvalidationTracker.syncTriggers(writableDatabase);
        if (Build.VERSION.SDK_INT >= 16 && writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    @Deprecated
    public void endTransaction() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser == null) {
            internalEndTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Object lambda$endTransaction$1;
                    lambda$endTransaction$1 = RoomDatabase.this.lambda$endTransaction$1((SupportSQLiteDatabase) obj);
                    return lambda$endTransaction$1;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$endTransaction$1(SupportSQLiteDatabase supportSQLiteDatabase) {
        internalEndTransaction();
        return null;
    }

    private void internalEndTransaction() {
        this.mOpenHelper.getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        this.mInvalidationTracker.refreshVersionsAsync();
    }

    public Executor getQueryExecutor() {
        return this.mQueryExecutor;
    }

    public Executor getTransactionExecutor() {
        return this.mTransactionExecutor;
    }

    @Deprecated
    public void setTransactionSuccessful() {
        this.mOpenHelper.getWritableDatabase().setTransactionSuccessful();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void internalInitInvalidationTracker(SupportSQLiteDatabase supportSQLiteDatabase) {
        this.mInvalidationTracker.internalInit(supportSQLiteDatabase);
    }

    public InvalidationTracker getInvalidationTracker() {
        return this.mInvalidationTracker;
    }

    public boolean inTransaction() {
        return this.mOpenHelper.getWritableDatabase().inTransaction();
    }

    /* loaded from: classes.dex */
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        JournalMode resolve(Context context) {
            ActivityManager activityManager;
            if (this != AUTOMATIC) {
                return this;
            }
            if (Build.VERSION.SDK_INT >= 16 && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && !isLowRamDevice(activityManager)) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return SupportSQLiteCompat$Api19Impl.isLowRamDevice(activityManager);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class Builder<T extends RoomDatabase> {
        private boolean mAllowDestructiveMigrationOnDowngrade;
        private boolean mAllowMainThreadQueries;
        private TimeUnit mAutoCloseTimeUnit;
        private List<AutoMigrationSpec> mAutoMigrationSpecs;
        private ArrayList<Callback> mCallbacks;
        private final Context mContext;
        private String mCopyFromAssetPath;
        private File mCopyFromFile;
        private Callable<InputStream> mCopyFromInputStream;
        private final Class<T> mDatabaseClass;
        private SupportSQLiteOpenHelper.Factory mFactory;
        private Set<Integer> mMigrationStartAndEndVersions;
        private Set<Integer> mMigrationsNotRequiredFrom;
        private Intent mMultiInstanceInvalidationIntent;
        private final String mName;
        private PrepackagedDatabaseCallback mPrepackagedDatabaseCallback;
        private QueryCallback mQueryCallback;
        private Executor mQueryCallbackExecutor;
        private Executor mQueryExecutor;
        private Executor mTransactionExecutor;
        private List<Object> mTypeConverters;
        private long mAutoCloseTimeout = -1;
        private JournalMode mJournalMode = JournalMode.AUTOMATIC;
        private boolean mRequireMigration = true;
        private final MigrationContainer mMigrationContainer = new MigrationContainer();

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(Context context, Class<T> cls, String str) {
            this.mContext = context;
            this.mDatabaseClass = cls;
            this.mName = str;
        }

        public Builder<T> addMigrations(Migration... migrationArr) {
            if (this.mMigrationStartAndEndVersions == null) {
                this.mMigrationStartAndEndVersions = new HashSet();
            }
            for (Migration migration : migrationArr) {
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.mMigrationContainer.addMigrations(migrationArr);
            return this;
        }

        public Builder<T> fallbackToDestructiveMigration() {
            this.mRequireMigration = false;
            this.mAllowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        public Builder<T> addCallback(Callback callback) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new ArrayList<>();
            }
            this.mCallbacks.add(callback);
            return this;
        }

        public T build() {
            Executor executor;
            if (this.mContext == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.mDatabaseClass == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.mQueryExecutor;
            if (executor2 == null && this.mTransactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.mTransactionExecutor = iOThreadExecutor;
                this.mQueryExecutor = iOThreadExecutor;
            } else if (executor2 != null && this.mTransactionExecutor == null) {
                this.mTransactionExecutor = executor2;
            } else if (executor2 == null && (executor = this.mTransactionExecutor) != null) {
                this.mQueryExecutor = executor;
            }
            Set<Integer> set = this.mMigrationStartAndEndVersions;
            if (set != null && this.mMigrationsNotRequiredFrom != null) {
                for (Integer num : set) {
                    if (this.mMigrationsNotRequiredFrom.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            AutoClosingRoomOpenHelperFactory autoClosingRoomOpenHelperFactory = this.mFactory;
            if (autoClosingRoomOpenHelperFactory == null) {
                autoClosingRoomOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            }
            long j = this.mAutoCloseTimeout;
            if (j > 0) {
                if (this.mName == null) {
                    throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                }
                autoClosingRoomOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(autoClosingRoomOpenHelperFactory, new AutoCloser(j, this.mAutoCloseTimeUnit, this.mTransactionExecutor));
            }
            String str = this.mCopyFromAssetPath;
            if (str != null || this.mCopyFromFile != null || this.mCopyFromInputStream != null) {
                if (this.mName == null) {
                    throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                }
                int i = str == null ? 0 : 1;
                File file = this.mCopyFromFile;
                int i2 = i + (file == null ? 0 : 1);
                Callable<InputStream> callable = this.mCopyFromInputStream;
                if (i2 + (callable != null ? 1 : 0) != 1) {
                    throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                }
                autoClosingRoomOpenHelperFactory = new SQLiteCopyOpenHelperFactory(str, file, callable, autoClosingRoomOpenHelperFactory);
            }
            QueryCallback queryCallback = this.mQueryCallback;
            QueryInterceptorOpenHelperFactory queryInterceptorOpenHelperFactory = queryCallback != null ? new QueryInterceptorOpenHelperFactory(autoClosingRoomOpenHelperFactory, queryCallback, this.mQueryCallbackExecutor) : autoClosingRoomOpenHelperFactory;
            Context context = this.mContext;
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.mName, queryInterceptorOpenHelperFactory, this.mMigrationContainer, this.mCallbacks, this.mAllowMainThreadQueries, this.mJournalMode.resolve(context), this.mQueryExecutor, this.mTransactionExecutor, this.mMultiInstanceInvalidationIntent, this.mRequireMigration, this.mAllowDestructiveMigrationOnDowngrade, this.mMigrationsNotRequiredFrom, this.mCopyFromAssetPath, this.mCopyFromFile, this.mCopyFromInputStream, this.mPrepackagedDatabaseCallback, this.mTypeConverters, this.mAutoMigrationSpecs);
            T t = (T) Room.getGeneratedImplementation(this.mDatabaseClass, "_Impl");
            t.init(databaseConfiguration);
            return t;
        }
    }

    /* loaded from: classes.dex */
    public static class MigrationContainer {
        private HashMap<Integer, TreeMap<Integer, Migration>> mMigrations = new HashMap<>();

        public void addMigrations(Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                addMigration(migration);
            }
        }

        private void addMigration(Migration migration) {
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            TreeMap<Integer, Migration> treeMap = this.mMigrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.mMigrations.put(Integer.valueOf(i), treeMap);
            }
            Migration migration2 = treeMap.get(Integer.valueOf(i2));
            if (migration2 != null) {
                Log.w("ROOM", "Overriding migration " + migration2 + " with " + migration);
            }
            treeMap.put(Integer.valueOf(i2), migration);
        }

        public Map<Integer, Map<Integer, Migration>> getMigrations() {
            return Collections.unmodifiableMap(this.mMigrations);
        }

        public List<Migration> findMigrationPath(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return findUpMigrationPath(new ArrayList(), i2 > i, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.migration.Migration> findUpMigrationPath(java.util.List<androidx.room.migration.Migration> r7, boolean r8, int r9, int r10) {
            /*
                r6 = this;
            L0:
                if (r8 == 0) goto L5
                if (r9 >= r10) goto L5a
                goto L7
            L5:
                if (r9 <= r10) goto L5a
            L7:
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.migration.Migration>> r0 = r6.mMigrations
                java.lang.Integer r1 = java.lang.Integer.valueOf(r9)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r1 = 0
                if (r0 != 0) goto L17
                return r1
            L17:
                if (r8 == 0) goto L1e
                java.util.NavigableSet r2 = r0.descendingKeySet()
                goto L22
            L1e:
                java.util.Set r2 = r0.keySet()
            L22:
                java.util.Iterator r2 = r2.iterator()
            L26:
                boolean r3 = r2.hasNext()
                r4 = 1
                r5 = 0
                if (r3 == 0) goto L56
                java.lang.Object r3 = r2.next()
                java.lang.Integer r3 = (java.lang.Integer) r3
                int r3 = r3.intValue()
                if (r8 == 0) goto L40
                if (r3 > r10) goto L45
                if (r3 <= r9) goto L45
            L3e:
                r5 = 1
                goto L45
            L40:
                if (r3 < r10) goto L45
                if (r3 >= r9) goto L45
                goto L3e
            L45:
                if (r5 == 0) goto L26
                java.lang.Integer r9 = java.lang.Integer.valueOf(r3)
                java.lang.Object r9 = r0.get(r9)
                androidx.room.migration.Migration r9 = (androidx.room.migration.Migration) r9
                r7.add(r9)
                r9 = r3
                goto L57
            L56:
                r4 = 0
            L57:
                if (r4 != 0) goto L0
                return r1
            L5a:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.MigrationContainer.findUpMigrationPath(java.util.List, boolean, int, int):java.util.List");
        }
    }

    private static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
