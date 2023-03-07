package com.smedialink.bots.data.database;

import android.database.Cursor;
import androidx.room.EmptyResultSetException;
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
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.smedialink.bots.data.database.converter.Converter;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.model.BotType;
import com.smedialink.bots.data.model.database.BotsDbModel;
import com.smedialink.bots.data.model.network.BotVoteInfo;
import com.smedialink.bots.data.model.network.Response;
import com.smedialink.bots.domain.model.BotLanguage;
import io.reactivex.Flowable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final class BotsDao_Impl extends BotsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<BotsDbModel> __insertionAdapterOfBotsDbModel;
    private final EntityInsertionAdapter<BotsDbModel> __insertionAdapterOfBotsDbModel_1;
    private final SharedSQLiteStatement __preparedStmtOfResetDownloads;
    private final SharedSQLiteStatement __preparedStmtOfSaveOwnRating;
    private final SharedSQLiteStatement __preparedStmtOfUpdateBot;
    private final EntityDeletionOrUpdateAdapter<BotsDbModel> __updateAdapterOfBotsDbModel;

    public BotsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfBotsDbModel = new EntityInsertionAdapter<BotsDbModel>(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `BotsDbModel` (`id`,`sku`,`lang`,`avatarOriginal`,`avatarRounded`,`titleLocales`,`descriptionLocales`,`title`,`description`,`installs`,`priority`,`reviews`,`rating`,`ownRating`,`installLogged`,`useAssets`,`botUpdated`,`tags`,`file`,`hash`,`phrases`,`themes`,`created`,`updated`,`price`,`type`,`status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, BotsDbModel value) {
                if (value.getId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getId());
                }
                if (value.getSku() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSku());
                }
                String converter = Converter.toString(value.getLang());
                if (converter == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, converter);
                }
                if (value.getAvatarOriginal() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getAvatarOriginal());
                }
                if (value.getAvatarRounded() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getAvatarRounded());
                }
                String fromMap = Converter.fromMap(value.getTitleLocales());
                if (fromMap == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, fromMap);
                }
                String fromMap2 = Converter.fromMap(value.getDescriptionLocales());
                if (fromMap2 == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, fromMap2);
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getTitle());
                }
                if (value.getDescription() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getDescription());
                }
                stmt.bindLong(10, value.getInstalls());
                stmt.bindLong(11, value.getPriority());
                stmt.bindLong(12, value.getReviews());
                stmt.bindDouble(13, value.getRating());
                stmt.bindLong(14, value.getOwnRating());
                stmt.bindLong(15, value.getInstallLogged());
                stmt.bindLong(16, value.getUseAssets());
                stmt.bindLong(17, value.getBotUpdated());
                String fromStrings = Converter.fromStrings(value.getTags());
                if (fromStrings == null) {
                    stmt.bindNull(18);
                } else {
                    stmt.bindString(18, fromStrings);
                }
                if (value.getFile() == null) {
                    stmt.bindNull(19);
                } else {
                    stmt.bindString(19, value.getFile());
                }
                if (value.getHash() == null) {
                    stmt.bindNull(20);
                } else {
                    stmt.bindString(20, value.getHash());
                }
                stmt.bindLong(21, value.getPhrases());
                stmt.bindLong(22, value.getThemes());
                Long fromDate = Converter.fromDate(value.getCreated());
                if (fromDate == null) {
                    stmt.bindNull(23);
                } else {
                    stmt.bindLong(23, fromDate.longValue());
                }
                Long fromDate2 = Converter.fromDate(value.getUpdated());
                if (fromDate2 == null) {
                    stmt.bindNull(24);
                } else {
                    stmt.bindLong(24, fromDate2.longValue());
                }
                if (value.getPrice() == null) {
                    stmt.bindNull(25);
                } else {
                    stmt.bindString(25, value.getPrice());
                }
                String converter2 = Converter.toString(value.getType());
                if (converter2 == null) {
                    stmt.bindNull(26);
                } else {
                    stmt.bindString(26, converter2);
                }
                String converter3 = Converter.toString(value.getStatus());
                if (converter3 == null) {
                    stmt.bindNull(27);
                } else {
                    stmt.bindString(27, converter3);
                }
            }
        };
        this.__insertionAdapterOfBotsDbModel_1 = new EntityInsertionAdapter<BotsDbModel>(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `BotsDbModel` (`id`,`sku`,`lang`,`avatarOriginal`,`avatarRounded`,`titleLocales`,`descriptionLocales`,`title`,`description`,`installs`,`priority`,`reviews`,`rating`,`ownRating`,`installLogged`,`useAssets`,`botUpdated`,`tags`,`file`,`hash`,`phrases`,`themes`,`created`,`updated`,`price`,`type`,`status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, BotsDbModel value) {
                if (value.getId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getId());
                }
                if (value.getSku() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSku());
                }
                String converter = Converter.toString(value.getLang());
                if (converter == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, converter);
                }
                if (value.getAvatarOriginal() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getAvatarOriginal());
                }
                if (value.getAvatarRounded() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getAvatarRounded());
                }
                String fromMap = Converter.fromMap(value.getTitleLocales());
                if (fromMap == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, fromMap);
                }
                String fromMap2 = Converter.fromMap(value.getDescriptionLocales());
                if (fromMap2 == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, fromMap2);
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getTitle());
                }
                if (value.getDescription() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getDescription());
                }
                stmt.bindLong(10, value.getInstalls());
                stmt.bindLong(11, value.getPriority());
                stmt.bindLong(12, value.getReviews());
                stmt.bindDouble(13, value.getRating());
                stmt.bindLong(14, value.getOwnRating());
                stmt.bindLong(15, value.getInstallLogged());
                stmt.bindLong(16, value.getUseAssets());
                stmt.bindLong(17, value.getBotUpdated());
                String fromStrings = Converter.fromStrings(value.getTags());
                if (fromStrings == null) {
                    stmt.bindNull(18);
                } else {
                    stmt.bindString(18, fromStrings);
                }
                if (value.getFile() == null) {
                    stmt.bindNull(19);
                } else {
                    stmt.bindString(19, value.getFile());
                }
                if (value.getHash() == null) {
                    stmt.bindNull(20);
                } else {
                    stmt.bindString(20, value.getHash());
                }
                stmt.bindLong(21, value.getPhrases());
                stmt.bindLong(22, value.getThemes());
                Long fromDate = Converter.fromDate(value.getCreated());
                if (fromDate == null) {
                    stmt.bindNull(23);
                } else {
                    stmt.bindLong(23, fromDate.longValue());
                }
                Long fromDate2 = Converter.fromDate(value.getUpdated());
                if (fromDate2 == null) {
                    stmt.bindNull(24);
                } else {
                    stmt.bindLong(24, fromDate2.longValue());
                }
                if (value.getPrice() == null) {
                    stmt.bindNull(25);
                } else {
                    stmt.bindString(25, value.getPrice());
                }
                String converter2 = Converter.toString(value.getType());
                if (converter2 == null) {
                    stmt.bindNull(26);
                } else {
                    stmt.bindString(26, converter2);
                }
                String converter3 = Converter.toString(value.getStatus());
                if (converter3 == null) {
                    stmt.bindNull(27);
                } else {
                    stmt.bindString(27, converter3);
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<BotsDbModel>(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `BotsDbModel` WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, BotsDbModel value) {
                if (value.getId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getId());
                }
            }
        };
        this.__updateAdapterOfBotsDbModel = new EntityDeletionOrUpdateAdapter<BotsDbModel>(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `BotsDbModel` SET `id` = ?,`sku` = ?,`lang` = ?,`avatarOriginal` = ?,`avatarRounded` = ?,`titleLocales` = ?,`descriptionLocales` = ?,`title` = ?,`description` = ?,`installs` = ?,`priority` = ?,`reviews` = ?,`rating` = ?,`ownRating` = ?,`installLogged` = ?,`useAssets` = ?,`botUpdated` = ?,`tags` = ?,`file` = ?,`hash` = ?,`phrases` = ?,`themes` = ?,`created` = ?,`updated` = ?,`price` = ?,`type` = ?,`status` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, BotsDbModel value) {
                if (value.getId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getId());
                }
                if (value.getSku() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSku());
                }
                String converter = Converter.toString(value.getLang());
                if (converter == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, converter);
                }
                if (value.getAvatarOriginal() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getAvatarOriginal());
                }
                if (value.getAvatarRounded() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getAvatarRounded());
                }
                String fromMap = Converter.fromMap(value.getTitleLocales());
                if (fromMap == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, fromMap);
                }
                String fromMap2 = Converter.fromMap(value.getDescriptionLocales());
                if (fromMap2 == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, fromMap2);
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getTitle());
                }
                if (value.getDescription() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getDescription());
                }
                stmt.bindLong(10, value.getInstalls());
                stmt.bindLong(11, value.getPriority());
                stmt.bindLong(12, value.getReviews());
                stmt.bindDouble(13, value.getRating());
                stmt.bindLong(14, value.getOwnRating());
                stmt.bindLong(15, value.getInstallLogged());
                stmt.bindLong(16, value.getUseAssets());
                stmt.bindLong(17, value.getBotUpdated());
                String fromStrings = Converter.fromStrings(value.getTags());
                if (fromStrings == null) {
                    stmt.bindNull(18);
                } else {
                    stmt.bindString(18, fromStrings);
                }
                if (value.getFile() == null) {
                    stmt.bindNull(19);
                } else {
                    stmt.bindString(19, value.getFile());
                }
                if (value.getHash() == null) {
                    stmt.bindNull(20);
                } else {
                    stmt.bindString(20, value.getHash());
                }
                stmt.bindLong(21, value.getPhrases());
                stmt.bindLong(22, value.getThemes());
                Long fromDate = Converter.fromDate(value.getCreated());
                if (fromDate == null) {
                    stmt.bindNull(23);
                } else {
                    stmt.bindLong(23, fromDate.longValue());
                }
                Long fromDate2 = Converter.fromDate(value.getUpdated());
                if (fromDate2 == null) {
                    stmt.bindNull(24);
                } else {
                    stmt.bindLong(24, fromDate2.longValue());
                }
                if (value.getPrice() == null) {
                    stmt.bindNull(25);
                } else {
                    stmt.bindString(25, value.getPrice());
                }
                String converter2 = Converter.toString(value.getType());
                if (converter2 == null) {
                    stmt.bindNull(26);
                } else {
                    stmt.bindString(26, converter2);
                }
                String converter3 = Converter.toString(value.getStatus());
                if (converter3 == null) {
                    stmt.bindNull(27);
                } else {
                    stmt.bindString(27, converter3);
                }
                if (value.getId() == null) {
                    stmt.bindNull(28);
                } else {
                    stmt.bindString(28, value.getId());
                }
            }
        };
        new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE from BotsDbModel";
            }
        };
        this.__preparedStmtOfUpdateBot = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE  BotsDbModel SET hash =? , botUpdated =?, useAssets=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetDownloads = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE BotsDbModel set status=? WHERE status =?";
            }
        };
        this.__preparedStmtOfSaveOwnRating = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE BotsDbModel SET ownRating = ? WHERE id = ?";
            }
        };
        new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE BotsDbModel SET installLogged = 1 WHERE id = ?";
            }
        };
        new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.bots.data.database.BotsDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE BotsDbModel SET useAssets = 0 WHERE id = ?";
            }
        };
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public long insertOrReplace(final BotsDbModel entity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfBotsDbModel.insertAndReturnId(entity);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public List<Long> insertOrReplace(final List<BotsDbModel> entities) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.__insertionAdapterOfBotsDbModel.insertAndReturnIdsList(entities);
            this.__db.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public List<Long> insertButIgnore(final List<BotsDbModel> entities) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.__insertionAdapterOfBotsDbModel_1.insertAndReturnIdsList(entities);
            this.__db.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public void update(final BotsDbModel entity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfBotsDbModel.handle(entity);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public void saveRatings(final Response<List<BotVoteInfo>> response) {
        this.__db.beginTransaction();
        try {
            super.saveRatings(response);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public void updateBot(final String botId, final String hash, final int botUpdated, final int useAssets) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfUpdateBot.acquire();
        if (hash == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, hash);
        }
        acquire.bindLong(2, botUpdated);
        acquire.bindLong(3, useAssets);
        if (botId == null) {
            acquire.bindNull(4);
        } else {
            acquire.bindString(4, botId);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfUpdateBot.release(acquire);
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public void resetDownloads(final BotStatus newBotStatus, final BotStatus botStatus) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetDownloads.acquire();
        String converter = Converter.toString(newBotStatus);
        if (converter == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, converter);
        }
        String converter2 = Converter.toString(botStatus);
        if (converter2 == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, converter2);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetDownloads.release(acquire);
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public int saveOwnRating(final String botId, final int value) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSaveOwnRating.acquire();
        acquire.bindLong(1, value);
        if (botId == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, botId);
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSaveOwnRating.release(acquire);
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public Flowable<List<BotsDbModel>> streamAll() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel", 0);
        return RxRoom.createFlowable(this.__db, false, new String[]{"BotsDbModel"}, new Callable<List<BotsDbModel>>() { // from class: com.smedialink.bots.data.database.BotsDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<BotsDbModel> call() throws Exception {
                String string;
                int i;
                String string2;
                int i2;
                String string3;
                int i3;
                Cursor query = DBUtil.query(BotsDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                    int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                    int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                    int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                    int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                    int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                    int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                    int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                    int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                    int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                    int i4 = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                        String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                        BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                        String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                        String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                        Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                        Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                        String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                        String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                        long j = query.getLong(columnIndexOrThrow10);
                        long j2 = query.getLong(columnIndexOrThrow11);
                        long j3 = query.getLong(columnIndexOrThrow12);
                        float f = query.getFloat(columnIndexOrThrow13);
                        int i5 = i4;
                        int i6 = query.getInt(i5);
                        int i7 = columnIndexOrThrow;
                        int i8 = columnIndexOrThrow15;
                        int i9 = query.getInt(i8);
                        columnIndexOrThrow15 = i8;
                        int i10 = columnIndexOrThrow16;
                        int i11 = query.getInt(i10);
                        columnIndexOrThrow16 = i10;
                        int i12 = columnIndexOrThrow17;
                        int i13 = query.getInt(i12);
                        columnIndexOrThrow17 = i12;
                        int i14 = columnIndexOrThrow18;
                        List<String> fromString = Converter.fromString(query.isNull(i14) ? null : query.getString(i14));
                        columnIndexOrThrow18 = i14;
                        int i15 = columnIndexOrThrow19;
                        if (query.isNull(i15)) {
                            columnIndexOrThrow19 = i15;
                            i = columnIndexOrThrow20;
                            string = null;
                        } else {
                            string = query.getString(i15);
                            columnIndexOrThrow19 = i15;
                            i = columnIndexOrThrow20;
                        }
                        if (query.isNull(i)) {
                            columnIndexOrThrow20 = i;
                            i2 = columnIndexOrThrow21;
                            string2 = null;
                        } else {
                            string2 = query.getString(i);
                            columnIndexOrThrow20 = i;
                            i2 = columnIndexOrThrow21;
                        }
                        long j4 = query.getLong(i2);
                        columnIndexOrThrow21 = i2;
                        int i16 = columnIndexOrThrow22;
                        long j5 = query.getLong(i16);
                        columnIndexOrThrow22 = i16;
                        int i17 = columnIndexOrThrow23;
                        Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(i17) ? null : Long.valueOf(query.getLong(i17)));
                        columnIndexOrThrow23 = i17;
                        int i18 = columnIndexOrThrow24;
                        Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(i18) ? null : Long.valueOf(query.getLong(i18)));
                        columnIndexOrThrow24 = i18;
                        int i19 = columnIndexOrThrow25;
                        if (query.isNull(i19)) {
                            columnIndexOrThrow25 = i19;
                            i3 = columnIndexOrThrow26;
                            string3 = null;
                        } else {
                            string3 = query.getString(i19);
                            columnIndexOrThrow25 = i19;
                            i3 = columnIndexOrThrow26;
                        }
                        BotType botsDbModelType = Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3));
                        columnIndexOrThrow26 = i3;
                        int i20 = columnIndexOrThrow27;
                        columnIndexOrThrow27 = i20;
                        arrayList.add(new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i6, i9, i11, i13, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, botsDbModelType, Converter.toBotsDbModelStatus(query.isNull(i20) ? null : query.getString(i20))));
                        columnIndexOrThrow = i7;
                        i4 = i5;
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

    @Override // com.smedialink.bots.data.database.BotsDao
    public Flowable<BotsDbModel> streamBot(final String botId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel WHERE id = ?", 1);
        if (botId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, botId);
        }
        return RxRoom.createFlowable(this.__db, false, new String[]{"BotsDbModel"}, new Callable<BotsDbModel>() { // from class: com.smedialink.bots.data.database.BotsDao_Impl.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public BotsDbModel call() throws Exception {
                BotsDbModel botsDbModel;
                String string;
                int i;
                String string2;
                int i2;
                String string3;
                int i3;
                Cursor query = DBUtil.query(BotsDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                    int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                    int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                    int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                    int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                    int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                    int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                    int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                    int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                    int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                    if (query.moveToFirst()) {
                        String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                        String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                        BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                        String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                        String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                        Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                        Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                        String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                        String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                        long j = query.getLong(columnIndexOrThrow10);
                        long j2 = query.getLong(columnIndexOrThrow11);
                        long j3 = query.getLong(columnIndexOrThrow12);
                        float f = query.getFloat(columnIndexOrThrow13);
                        int i4 = query.getInt(columnIndexOrThrow14);
                        int i5 = query.getInt(columnIndexOrThrow15);
                        int i6 = query.getInt(columnIndexOrThrow16);
                        int i7 = query.getInt(columnIndexOrThrow17);
                        List<String> fromString = Converter.fromString(query.isNull(columnIndexOrThrow18) ? null : query.getString(columnIndexOrThrow18));
                        if (query.isNull(columnIndexOrThrow19)) {
                            i = columnIndexOrThrow20;
                            string = null;
                        } else {
                            string = query.getString(columnIndexOrThrow19);
                            i = columnIndexOrThrow20;
                        }
                        if (query.isNull(i)) {
                            i2 = columnIndexOrThrow21;
                            string2 = null;
                        } else {
                            string2 = query.getString(i);
                            i2 = columnIndexOrThrow21;
                        }
                        long j4 = query.getLong(i2);
                        long j5 = query.getLong(columnIndexOrThrow22);
                        Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow23) ? null : Long.valueOf(query.getLong(columnIndexOrThrow23)));
                        Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow24) ? null : Long.valueOf(query.getLong(columnIndexOrThrow24)));
                        if (query.isNull(columnIndexOrThrow25)) {
                            i3 = columnIndexOrThrow26;
                            string3 = null;
                        } else {
                            string3 = query.getString(columnIndexOrThrow25);
                            i3 = columnIndexOrThrow26;
                        }
                        botsDbModel = new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i4, i5, i6, i7, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3)), Converter.toBotsDbModelStatus(query.isNull(columnIndexOrThrow27) ? null : query.getString(columnIndexOrThrow27)));
                    } else {
                        botsDbModel = null;
                    }
                    return botsDbModel;
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public BotsDbModel getById(final String botId) {
        RoomSQLiteQuery roomSQLiteQuery;
        BotsDbModel botsDbModel;
        String string;
        int i;
        String string2;
        int i2;
        String string3;
        int i3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel WHERE id = ?", 1);
        if (botId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, botId);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                if (query.moveToFirst()) {
                    String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                    BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                    String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                    Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                    Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                    String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                    String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                    long j = query.getLong(columnIndexOrThrow10);
                    long j2 = query.getLong(columnIndexOrThrow11);
                    long j3 = query.getLong(columnIndexOrThrow12);
                    float f = query.getFloat(columnIndexOrThrow13);
                    int i4 = query.getInt(columnIndexOrThrow14);
                    int i5 = query.getInt(columnIndexOrThrow15);
                    int i6 = query.getInt(columnIndexOrThrow16);
                    int i7 = query.getInt(columnIndexOrThrow17);
                    List<String> fromString = Converter.fromString(query.isNull(columnIndexOrThrow18) ? null : query.getString(columnIndexOrThrow18));
                    if (query.isNull(columnIndexOrThrow19)) {
                        i = columnIndexOrThrow20;
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow19);
                        i = columnIndexOrThrow20;
                    }
                    if (query.isNull(i)) {
                        i2 = columnIndexOrThrow21;
                        string2 = null;
                    } else {
                        string2 = query.getString(i);
                        i2 = columnIndexOrThrow21;
                    }
                    long j4 = query.getLong(i2);
                    long j5 = query.getLong(columnIndexOrThrow22);
                    Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow23) ? null : Long.valueOf(query.getLong(columnIndexOrThrow23)));
                    Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow24) ? null : Long.valueOf(query.getLong(columnIndexOrThrow24)));
                    if (query.isNull(columnIndexOrThrow25)) {
                        i3 = columnIndexOrThrow26;
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow25);
                        i3 = columnIndexOrThrow26;
                    }
                    botsDbModel = new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i4, i5, i6, i7, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3)), Converter.toBotsDbModelStatus(query.isNull(columnIndexOrThrow27) ? null : query.getString(columnIndexOrThrow27)));
                } else {
                    botsDbModel = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return botsDbModel;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public BotsDbModel getBySku(final String sku) {
        RoomSQLiteQuery roomSQLiteQuery;
        BotsDbModel botsDbModel;
        String string;
        int i;
        String string2;
        int i2;
        String string3;
        int i3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel WHERE sku = ?", 1);
        if (sku == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, sku);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                if (query.moveToFirst()) {
                    String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                    BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                    String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                    Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                    Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                    String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                    String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                    long j = query.getLong(columnIndexOrThrow10);
                    long j2 = query.getLong(columnIndexOrThrow11);
                    long j3 = query.getLong(columnIndexOrThrow12);
                    float f = query.getFloat(columnIndexOrThrow13);
                    int i4 = query.getInt(columnIndexOrThrow14);
                    int i5 = query.getInt(columnIndexOrThrow15);
                    int i6 = query.getInt(columnIndexOrThrow16);
                    int i7 = query.getInt(columnIndexOrThrow17);
                    List<String> fromString = Converter.fromString(query.isNull(columnIndexOrThrow18) ? null : query.getString(columnIndexOrThrow18));
                    if (query.isNull(columnIndexOrThrow19)) {
                        i = columnIndexOrThrow20;
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow19);
                        i = columnIndexOrThrow20;
                    }
                    if (query.isNull(i)) {
                        i2 = columnIndexOrThrow21;
                        string2 = null;
                    } else {
                        string2 = query.getString(i);
                        i2 = columnIndexOrThrow21;
                    }
                    long j4 = query.getLong(i2);
                    long j5 = query.getLong(columnIndexOrThrow22);
                    Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow23) ? null : Long.valueOf(query.getLong(columnIndexOrThrow23)));
                    Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow24) ? null : Long.valueOf(query.getLong(columnIndexOrThrow24)));
                    if (query.isNull(columnIndexOrThrow25)) {
                        i3 = columnIndexOrThrow26;
                        string3 = null;
                    } else {
                        string3 = query.getString(columnIndexOrThrow25);
                        i3 = columnIndexOrThrow26;
                    }
                    botsDbModel = new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i4, i5, i6, i7, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3)), Converter.toBotsDbModelStatus(query.isNull(columnIndexOrThrow27) ? null : query.getString(columnIndexOrThrow27)));
                } else {
                    botsDbModel = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return botsDbModel;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public Single<BotsDbModel> getBotBySku(final String sku) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel WHERE sku = ?", 1);
        if (sku == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, sku);
        }
        return RxRoom.createSingle(new Callable<BotsDbModel>() { // from class: com.smedialink.bots.data.database.BotsDao_Impl.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public BotsDbModel call() throws Exception {
                BotsDbModel botsDbModel;
                String string;
                int i;
                String string2;
                int i2;
                String string3;
                int i3;
                Cursor query = DBUtil.query(BotsDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
                    try {
                        int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                        int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                        int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                        int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                        int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                        int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                        int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                        int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                        int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                        int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                        int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                        int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                        int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        if (query.moveToFirst()) {
                            String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                            String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                            BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                            String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                            String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                            Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                            Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                            String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                            String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                            long j = query.getLong(columnIndexOrThrow10);
                            long j2 = query.getLong(columnIndexOrThrow11);
                            long j3 = query.getLong(columnIndexOrThrow12);
                            float f = query.getFloat(columnIndexOrThrow13);
                            int i4 = query.getInt(columnIndexOrThrow14);
                            int i5 = query.getInt(columnIndexOrThrow15);
                            int i6 = query.getInt(columnIndexOrThrow16);
                            int i7 = query.getInt(columnIndexOrThrow17);
                            List<String> fromString = Converter.fromString(query.isNull(columnIndexOrThrow18) ? null : query.getString(columnIndexOrThrow18));
                            if (query.isNull(columnIndexOrThrow19)) {
                                i = columnIndexOrThrow20;
                                string = null;
                            } else {
                                string = query.getString(columnIndexOrThrow19);
                                i = columnIndexOrThrow20;
                            }
                            if (query.isNull(i)) {
                                i2 = columnIndexOrThrow21;
                                string2 = null;
                            } else {
                                string2 = query.getString(i);
                                i2 = columnIndexOrThrow21;
                            }
                            long j4 = query.getLong(i2);
                            long j5 = query.getLong(columnIndexOrThrow22);
                            Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow23) ? null : Long.valueOf(query.getLong(columnIndexOrThrow23)));
                            Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(columnIndexOrThrow24) ? null : Long.valueOf(query.getLong(columnIndexOrThrow24)));
                            if (query.isNull(columnIndexOrThrow25)) {
                                i3 = columnIndexOrThrow26;
                                string3 = null;
                            } else {
                                string3 = query.getString(columnIndexOrThrow25);
                                i3 = columnIndexOrThrow26;
                            }
                            botsDbModel = new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i4, i5, i6, i7, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3)), Converter.toBotsDbModelStatus(query.isNull(columnIndexOrThrow27) ? null : query.getString(columnIndexOrThrow27)));
                        } else {
                            botsDbModel = null;
                        }
                        if (botsDbModel == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Query returned empty result set: ");
                            try {
                                sb.append(acquire.getSql());
                                throw new EmptyResultSetException(sb.toString());
                            } catch (Throwable th) {
                                th = th;
                                query.close();
                                throw th;
                            }
                        }
                        query.close();
                        return botsDbModel;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public List<BotsDbModel> getAll() {
        RoomSQLiteQuery roomSQLiteQuery;
        String string;
        int i;
        String string2;
        int i2;
        String string3;
        int i3;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsDbModel ", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sku");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "lang");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "avatarOriginal");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "avatarRounded");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "titleLocales");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "descriptionLocales");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "title");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "description");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "installs");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "priority");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "reviews");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "rating");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "ownRating");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "installLogged");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "useAssets");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "botUpdated");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "file");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "hash");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "phrases");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "themes");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "created");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "updated");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "price");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, SessionDescription.ATTR_TYPE);
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "status");
                int i4 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string4 = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    String string5 = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                    BotLanguage botLanguage = Converter.toBotLanguage(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                    String string6 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    String string7 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                    Map<String, String> map = Converter.toMap(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                    Map<String, String> map2 = Converter.toMap(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                    String string8 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                    String string9 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                    long j = query.getLong(columnIndexOrThrow10);
                    long j2 = query.getLong(columnIndexOrThrow11);
                    long j3 = query.getLong(columnIndexOrThrow12);
                    float f = query.getFloat(columnIndexOrThrow13);
                    int i5 = i4;
                    int i6 = query.getInt(i5);
                    int i7 = columnIndexOrThrow;
                    int i8 = columnIndexOrThrow15;
                    int i9 = query.getInt(i8);
                    columnIndexOrThrow15 = i8;
                    int i10 = columnIndexOrThrow16;
                    int i11 = query.getInt(i10);
                    columnIndexOrThrow16 = i10;
                    int i12 = columnIndexOrThrow17;
                    int i13 = query.getInt(i12);
                    columnIndexOrThrow17 = i12;
                    int i14 = columnIndexOrThrow18;
                    List<String> fromString = Converter.fromString(query.isNull(i14) ? null : query.getString(i14));
                    columnIndexOrThrow18 = i14;
                    int i15 = columnIndexOrThrow19;
                    if (query.isNull(i15)) {
                        columnIndexOrThrow19 = i15;
                        i = columnIndexOrThrow20;
                        string = null;
                    } else {
                        string = query.getString(i15);
                        columnIndexOrThrow19 = i15;
                        i = columnIndexOrThrow20;
                    }
                    if (query.isNull(i)) {
                        columnIndexOrThrow20 = i;
                        i2 = columnIndexOrThrow21;
                        string2 = null;
                    } else {
                        string2 = query.getString(i);
                        columnIndexOrThrow20 = i;
                        i2 = columnIndexOrThrow21;
                    }
                    long j4 = query.getLong(i2);
                    columnIndexOrThrow21 = i2;
                    int i16 = columnIndexOrThrow22;
                    long j5 = query.getLong(i16);
                    columnIndexOrThrow22 = i16;
                    int i17 = columnIndexOrThrow23;
                    Date fromTimeStamp = Converter.fromTimeStamp(query.isNull(i17) ? null : Long.valueOf(query.getLong(i17)));
                    columnIndexOrThrow23 = i17;
                    int i18 = columnIndexOrThrow24;
                    Date fromTimeStamp2 = Converter.fromTimeStamp(query.isNull(i18) ? null : Long.valueOf(query.getLong(i18)));
                    columnIndexOrThrow24 = i18;
                    int i19 = columnIndexOrThrow25;
                    if (query.isNull(i19)) {
                        columnIndexOrThrow25 = i19;
                        i3 = columnIndexOrThrow26;
                        string3 = null;
                    } else {
                        string3 = query.getString(i19);
                        columnIndexOrThrow25 = i19;
                        i3 = columnIndexOrThrow26;
                    }
                    BotType botsDbModelType = Converter.toBotsDbModelType(query.isNull(i3) ? null : query.getString(i3));
                    columnIndexOrThrow26 = i3;
                    int i20 = columnIndexOrThrow27;
                    columnIndexOrThrow27 = i20;
                    arrayList.add(new BotsDbModel(string4, string5, botLanguage, string6, string7, map, map2, string8, string9, j, j2, j3, f, i6, i9, i11, i13, fromString, string, string2, j4, j5, fromTimeStamp, fromTimeStamp2, string3, botsDbModelType, Converter.toBotsDbModelStatus(query.isNull(i20) ? null : query.getString(i20))));
                    columnIndexOrThrow = i7;
                    i4 = i5;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public int getOwnRating(final String botId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT ownRating FROM BotsDbModel WHERE type = ?", 1);
        if (botId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, botId);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            return query.moveToFirst() ? query.getInt(0) : 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.smedialink.bots.data.database.BotsDao
    public void deleteByIgnored(final String[] ignoredIds) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("DELETE from BotsDbModel WHERE id NOT IN (");
        StringUtil.appendPlaceholders(newStringBuilder, ignoredIds.length);
        newStringBuilder.append(")");
        SupportSQLiteStatement compileStatement = this.__db.compileStatement(newStringBuilder.toString());
        int i = 1;
        for (String str : ignoredIds) {
            if (str == null) {
                compileStatement.bindNull(i);
            } else {
                compileStatement.bindString(i, str);
            }
            i++;
        }
        this.__db.beginTransaction();
        try {
            compileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
