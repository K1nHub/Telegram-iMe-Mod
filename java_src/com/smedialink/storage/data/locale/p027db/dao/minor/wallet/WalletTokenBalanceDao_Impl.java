package com.smedialink.storage.data.locale.p027db.dao.minor.wallet;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.smedialink.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl */
/* loaded from: classes3.dex */
public final class WalletTokenBalanceDao_Impl extends WalletTokenBalanceDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WalletTokenBalanceDb> __insertionAdapterOfWalletTokenBalanceDb;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteAllWalletBalances;

    public WalletTokenBalanceDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWalletTokenBalanceDb = new EntityInsertionAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WalletTokenBalanceDb` (`tgUserId`,`coinCode`,`total`,`totalInDollars`,`rateToDollars`,`ratePercentageChange24h`,`networkType`) VALUES (?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getCoinCode() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getCoinCode());
                }
                stmt.bindDouble(3, value.getTotal());
                stmt.bindDouble(4, value.getTotalInDollars());
                stmt.bindDouble(5, value.getRateToDollars());
                stmt.bindDouble(6, value.getRatePercentageChange24h());
                if (value.getNetworkType() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getNetworkType());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `WalletTokenBalanceDb` WHERE `tgUserId` = ? AND `coinCode` = ? AND `networkType` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getCoinCode() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getCoinCode());
                }
                if (value.getNetworkType() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getNetworkType());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `WalletTokenBalanceDb` SET `tgUserId` = ?,`coinCode` = ?,`total` = ?,`totalInDollars` = ?,`rateToDollars` = ?,`ratePercentageChange24h` = ?,`networkType` = ? WHERE `tgUserId` = ? AND `coinCode` = ? AND `networkType` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getCoinCode() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getCoinCode());
                }
                stmt.bindDouble(3, value.getTotal());
                stmt.bindDouble(4, value.getTotalInDollars());
                stmt.bindDouble(5, value.getRateToDollars());
                stmt.bindDouble(6, value.getRatePercentageChange24h());
                if (value.getNetworkType() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getNetworkType());
                }
                stmt.bindLong(8, value.getTgUserId());
                if (value.getCoinCode() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getCoinCode());
                }
                if (value.getNetworkType() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getNetworkType());
                }
            }
        };
        this.__preparedStmtOfRxDeleteAllWalletBalances = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WalletTokenBalanceDb WHERE tgUserId = ? AND networkType = ?";
            }
        };
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.base.BaseDao
    public Completable rxInsert(final List<? extends WalletTokenBalanceDb> obj) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                WalletTokenBalanceDao_Impl.this.__db.beginTransaction();
                try {
                    WalletTokenBalanceDao_Impl.this.__insertionAdapterOfWalletTokenBalanceDb.insert((Iterable) obj);
                    WalletTokenBalanceDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokenBalanceDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao
    public Completable rxDeleteAllWalletBalances(final long userId, final String networkType) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = WalletTokenBalanceDao_Impl.this.__preparedStmtOfRxDeleteAllWalletBalances.acquire();
                acquire.bindLong(1, userId);
                String str = networkType;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                WalletTokenBalanceDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    WalletTokenBalanceDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokenBalanceDao_Impl.this.__db.endTransaction();
                    WalletTokenBalanceDao_Impl.this.__preparedStmtOfRxDeleteAllWalletBalances.release(acquire);
                }
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao
    public Single<List<WalletTokenBalanceDb>> getAllWalletBalances(final long userId, final String networkType) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = ? AND networkType = ?", 2);
        acquire.bindLong(1, userId);
        if (networkType == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, networkType);
        }
        return RxRoom.createSingle(new Callable<List<WalletTokenBalanceDb>>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<WalletTokenBalanceDb> call() throws Exception {
                Cursor query = DBUtil.query(WalletTokenBalanceDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "tgUserId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "coinCode");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "total");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "totalInDollars");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "rateToDollars");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "ratePercentageChange24h");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "networkType");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new WalletTokenBalanceDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getDouble(columnIndexOrThrow3), query.getFloat(columnIndexOrThrow4), query.getDouble(columnIndexOrThrow5), query.getFloat(columnIndexOrThrow6), query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7)));
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao
    public Single<List<WalletTokenBalanceDb>> getTokensBalances(final long userId, final String networkType, final List<String> codes) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND networkType = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND coinCode IN (");
        int size = codes.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 2);
        acquire.bindLong(1, userId);
        if (networkType == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, networkType);
        }
        int i = 3;
        for (String str : codes) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return RxRoom.createSingle(new Callable<List<WalletTokenBalanceDb>>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<WalletTokenBalanceDb> call() throws Exception {
                Cursor query = DBUtil.query(WalletTokenBalanceDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "tgUserId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "coinCode");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "total");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "totalInDollars");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "rateToDollars");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "ratePercentageChange24h");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "networkType");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new WalletTokenBalanceDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getDouble(columnIndexOrThrow3), query.getFloat(columnIndexOrThrow4), query.getDouble(columnIndexOrThrow5), query.getFloat(columnIndexOrThrow6), query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7)));
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao
    public Completable rxDeleteByCodes(final long userId, final List<String> codes) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletTokenBalanceDao_Impl.14
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM WalletTokenBalanceDb WHERE tgUserId = ");
                newStringBuilder.append("?");
                newStringBuilder.append(" AND coinCode IN (");
                StringUtil.appendPlaceholders(newStringBuilder, codes.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = WalletTokenBalanceDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                compileStatement.bindLong(1, userId);
                int i = 2;
                for (String str : codes) {
                    if (str == null) {
                        compileStatement.bindNull(i);
                    } else {
                        compileStatement.bindString(i, str);
                    }
                    i++;
                }
                WalletTokenBalanceDao_Impl.this.__db.beginTransaction();
                try {
                    compileStatement.executeUpdateDelete();
                    WalletTokenBalanceDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokenBalanceDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
