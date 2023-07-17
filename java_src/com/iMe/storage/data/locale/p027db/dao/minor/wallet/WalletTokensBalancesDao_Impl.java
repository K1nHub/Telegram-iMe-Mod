package com.iMe.storage.data.locale.p027db.dao.minor.wallet;

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
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl */
/* loaded from: classes3.dex */
public final class WalletTokensBalancesDao_Impl extends WalletTokensBalancesDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WalletTokenBalanceDb> __insertionAdapterOfWalletTokenBalanceDb;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteAllByUserId;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteAllWalletBalances;

    public WalletTokensBalancesDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWalletTokenBalanceDb = new EntityInsertionAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WalletTokenBalanceDb` (`tgUserId`,`total`,`totalInFiatValue`,`totalInFiatSymbol`,`totalInFiatTicker`,`rateToFiatValue`,`rateToFiatSymbol`,`rateToFiatTicker`,`ratePercentageChange24h`,`address`,`networkId`,`avatarUrl`,`decimals`,`ticker`,`isCoin`,`name`,`website`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                stmt.bindDouble(2, value.getTotal());
                stmt.bindDouble(3, value.getTotalInFiatValue());
                if (value.getTotalInFiatSymbol() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getTotalInFiatSymbol());
                }
                if (value.getTotalInFiatTicker() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getTotalInFiatTicker());
                }
                stmt.bindDouble(6, value.getRateToFiatValue());
                if (value.getRateToFiatSymbol() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getRateToFiatSymbol());
                }
                if (value.getRateToFiatTicker() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getRateToFiatTicker());
                }
                stmt.bindDouble(9, value.getRatePercentageChange24h());
                if (value.getAddress() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getAddress());
                }
                if (value.getNetworkId() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindString(11, value.getNetworkId());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, value.getAvatarUrl());
                }
                stmt.bindLong(13, value.getDecimals());
                if (value.getTicker() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getTicker());
                }
                stmt.bindLong(15, value.isCoin() ? 1L : 0L);
                if (value.getName() == null) {
                    stmt.bindNull(16);
                } else {
                    stmt.bindString(16, value.getName());
                }
                if (value.getWebsite() == null) {
                    stmt.bindNull(17);
                } else {
                    stmt.bindString(17, value.getWebsite());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `WalletTokenBalanceDb` WHERE `tgUserId` = ? AND `ticker` = ? AND `networkId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getTicker() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTicker());
                }
                if (value.getNetworkId() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getNetworkId());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletTokenBalanceDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `WalletTokenBalanceDb` SET `tgUserId` = ?,`total` = ?,`totalInFiatValue` = ?,`totalInFiatSymbol` = ?,`totalInFiatTicker` = ?,`rateToFiatValue` = ?,`rateToFiatSymbol` = ?,`rateToFiatTicker` = ?,`ratePercentageChange24h` = ?,`address` = ?,`networkId` = ?,`avatarUrl` = ?,`decimals` = ?,`ticker` = ?,`isCoin` = ?,`name` = ?,`website` = ? WHERE `tgUserId` = ? AND `ticker` = ? AND `networkId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletTokenBalanceDb value) {
                stmt.bindLong(1, value.getTgUserId());
                stmt.bindDouble(2, value.getTotal());
                stmt.bindDouble(3, value.getTotalInFiatValue());
                if (value.getTotalInFiatSymbol() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getTotalInFiatSymbol());
                }
                if (value.getTotalInFiatTicker() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getTotalInFiatTicker());
                }
                stmt.bindDouble(6, value.getRateToFiatValue());
                if (value.getRateToFiatSymbol() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getRateToFiatSymbol());
                }
                if (value.getRateToFiatTicker() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getRateToFiatTicker());
                }
                stmt.bindDouble(9, value.getRatePercentageChange24h());
                if (value.getAddress() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getAddress());
                }
                if (value.getNetworkId() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindString(11, value.getNetworkId());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, value.getAvatarUrl());
                }
                stmt.bindLong(13, value.getDecimals());
                if (value.getTicker() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getTicker());
                }
                stmt.bindLong(15, value.isCoin() ? 1L : 0L);
                if (value.getName() == null) {
                    stmt.bindNull(16);
                } else {
                    stmt.bindString(16, value.getName());
                }
                if (value.getWebsite() == null) {
                    stmt.bindNull(17);
                } else {
                    stmt.bindString(17, value.getWebsite());
                }
                stmt.bindLong(18, value.getTgUserId());
                if (value.getTicker() == null) {
                    stmt.bindNull(19);
                } else {
                    stmt.bindString(19, value.getTicker());
                }
                if (value.getNetworkId() == null) {
                    stmt.bindNull(20);
                } else {
                    stmt.bindString(20, value.getNetworkId());
                }
            }
        };
        this.__preparedStmtOfRxDeleteAllWalletBalances = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WalletTokenBalanceDb WHERE tgUserId = ? AND networkId = ?";
            }
        };
        this.__preparedStmtOfRxDeleteAllByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WalletTokenBalanceDb WHERE tgUserId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public Completable rxInsert(final List<? extends WalletTokenBalanceDb> obj) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                WalletTokensBalancesDao_Impl.this.__db.beginTransaction();
                try {
                    WalletTokensBalancesDao_Impl.this.__insertionAdapterOfWalletTokenBalanceDb.insert((Iterable) obj);
                    WalletTokensBalancesDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokensBalancesDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao
    public Completable rxDeleteAllWalletBalances(final long userId, final String networkId) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = WalletTokensBalancesDao_Impl.this.__preparedStmtOfRxDeleteAllWalletBalances.acquire();
                acquire.bindLong(1, userId);
                String str = networkId;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                WalletTokensBalancesDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    WalletTokensBalancesDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokensBalancesDao_Impl.this.__db.endTransaction();
                    WalletTokensBalancesDao_Impl.this.__preparedStmtOfRxDeleteAllWalletBalances.release(acquire);
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao
    public Completable rxDeleteAllByUserId(final long userId) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = WalletTokensBalancesDao_Impl.this.__preparedStmtOfRxDeleteAllByUserId.acquire();
                acquire.bindLong(1, userId);
                WalletTokensBalancesDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    WalletTokensBalancesDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokensBalancesDao_Impl.this.__db.endTransaction();
                    WalletTokensBalancesDao_Impl.this.__preparedStmtOfRxDeleteAllByUserId.release(acquire);
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao
    public Single<List<WalletTokenBalanceDb>> getAllWalletBalances(final long userId, final String networkId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = ? AND networkId = ?", 2);
        acquire.bindLong(1, userId);
        if (networkId == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, networkId);
        }
        return RxRoom.createSingle(new Callable<List<WalletTokenBalanceDb>>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<WalletTokenBalanceDb> call() throws Exception {
                String string;
                int i;
                Cursor query = DBUtil.query(WalletTokensBalancesDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "tgUserId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "total");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatValue");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatSymbol");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatTicker");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatValue");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatSymbol");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatTicker");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "ratePercentageChange24h");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "address");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "networkId");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "avatarUrl");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "decimals");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ticker");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "isCoin");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, AppMeasurementSdk.ConditionalUserProperty.NAME);
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "website");
                    int i2 = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        long j = query.getLong(columnIndexOrThrow);
                        double d = query.getDouble(columnIndexOrThrow2);
                        double d2 = query.getDouble(columnIndexOrThrow3);
                        String string2 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                        String string3 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                        double d3 = query.getDouble(columnIndexOrThrow6);
                        String string4 = query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7);
                        String string5 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                        double d4 = query.getDouble(columnIndexOrThrow9);
                        String string6 = query.isNull(columnIndexOrThrow10) ? null : query.getString(columnIndexOrThrow10);
                        String string7 = query.isNull(columnIndexOrThrow11) ? null : query.getString(columnIndexOrThrow11);
                        String string8 = query.isNull(columnIndexOrThrow12) ? null : query.getString(columnIndexOrThrow12);
                        int i3 = query.getInt(columnIndexOrThrow13);
                        int i4 = i2;
                        String string9 = query.isNull(i4) ? null : query.getString(i4);
                        int i5 = columnIndexOrThrow15;
                        int i6 = columnIndexOrThrow;
                        boolean z = query.getInt(i5) != 0;
                        int i7 = columnIndexOrThrow16;
                        String string10 = query.isNull(i7) ? null : query.getString(i7);
                        int i8 = columnIndexOrThrow17;
                        if (query.isNull(i8)) {
                            i = i8;
                            string = null;
                        } else {
                            string = query.getString(i8);
                            i = i8;
                        }
                        arrayList.add(new WalletTokenBalanceDb(j, d, d2, string2, string3, d3, string4, string5, d4, string6, string7, string8, i3, string9, z, string10, string));
                        columnIndexOrThrow = i6;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow16 = i7;
                        columnIndexOrThrow17 = i;
                        i2 = i4;
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

    @Override // com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao
    public Single<List<WalletTokenBalanceDb>> getTokensBalances(final long userId, final String networkId, final List<String> addresses) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND networkId = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND address IN (");
        int size = addresses.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 2);
        acquire.bindLong(1, userId);
        if (networkId == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, networkId);
        }
        int i = 3;
        for (String str : addresses) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return RxRoom.createSingle(new Callable<List<WalletTokenBalanceDb>>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.14
            @Override // java.util.concurrent.Callable
            public List<WalletTokenBalanceDb> call() throws Exception {
                String string;
                int i2;
                Cursor query = DBUtil.query(WalletTokensBalancesDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "tgUserId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "total");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatValue");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatSymbol");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "totalInFiatTicker");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatValue");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatSymbol");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "rateToFiatTicker");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "ratePercentageChange24h");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "address");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "networkId");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "avatarUrl");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "decimals");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ticker");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "isCoin");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, AppMeasurementSdk.ConditionalUserProperty.NAME);
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "website");
                    int i3 = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        long j = query.getLong(columnIndexOrThrow);
                        double d = query.getDouble(columnIndexOrThrow2);
                        double d2 = query.getDouble(columnIndexOrThrow3);
                        String string2 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                        String string3 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                        double d3 = query.getDouble(columnIndexOrThrow6);
                        String string4 = query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7);
                        String string5 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                        double d4 = query.getDouble(columnIndexOrThrow9);
                        String string6 = query.isNull(columnIndexOrThrow10) ? null : query.getString(columnIndexOrThrow10);
                        String string7 = query.isNull(columnIndexOrThrow11) ? null : query.getString(columnIndexOrThrow11);
                        String string8 = query.isNull(columnIndexOrThrow12) ? null : query.getString(columnIndexOrThrow12);
                        int i4 = query.getInt(columnIndexOrThrow13);
                        int i5 = i3;
                        String string9 = query.isNull(i5) ? null : query.getString(i5);
                        int i6 = columnIndexOrThrow15;
                        int i7 = columnIndexOrThrow;
                        boolean z = query.getInt(i6) != 0;
                        int i8 = columnIndexOrThrow16;
                        String string10 = query.isNull(i8) ? null : query.getString(i8);
                        int i9 = columnIndexOrThrow17;
                        if (query.isNull(i9)) {
                            i2 = i9;
                            string = null;
                        } else {
                            string = query.getString(i9);
                            i2 = i9;
                        }
                        arrayList.add(new WalletTokenBalanceDb(j, d, d2, string2, string3, d3, string4, string5, d4, string6, string7, string8, i4, string9, z, string10, string));
                        columnIndexOrThrow = i7;
                        columnIndexOrThrow15 = i6;
                        columnIndexOrThrow16 = i8;
                        columnIndexOrThrow17 = i2;
                        i3 = i5;
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

    @Override // com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao
    public Completable rxDeleteByNetworks(final long userId, final List<String> networksIds) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao_Impl.16
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM WalletTokenBalanceDb WHERE tgUserId = ");
                newStringBuilder.append("?");
                newStringBuilder.append(" AND networkId IN (");
                StringUtil.appendPlaceholders(newStringBuilder, networksIds.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = WalletTokensBalancesDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                compileStatement.bindLong(1, userId);
                int i = 2;
                for (String str : networksIds) {
                    if (str == null) {
                        compileStatement.bindNull(i);
                    } else {
                        compileStatement.bindString(i, str);
                    }
                    i++;
                }
                WalletTokensBalancesDao_Impl.this.__db.beginTransaction();
                try {
                    compileStatement.executeUpdateDelete();
                    WalletTokensBalancesDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletTokensBalancesDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
