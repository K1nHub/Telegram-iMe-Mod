.class public Lorg/telegram/messenger/DatabaseMigrationHelper;
.super Ljava/lang/Object;
.source "DatabaseMigrationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static migrate(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ge v0, v3, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    .line 20
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS read_state_out_idx_messages;"

    .line 22
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS ttl_idx_messages;"

    .line 23
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS date_idx_messages;"

    .line 24
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    .line 26
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    .line 27
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    .line 28
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    .line 30
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    .line 31
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    .line 32
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    .line 34
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    .line 36
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    .line 38
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    .line 39
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    .line 41
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    .line 43
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "UPDATE messages SET send_state = 2 WHERE mid < 0 AND send_state = 1"

    .line 45
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    const-string v0, "PRAGMA user_version = 4"

    .line 48
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v0, 0x4

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v3, :cond_3

    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    .line 52
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    .line 53
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 54
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v8, "SELECT date, data FROM enc_tasks WHERE 1"

    .line 55
    invoke-virtual {v2, v8, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const-string v8, "REPLACE INTO enc_tasks_v2 VALUES(?, ?)"

    .line 56
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    .line 57
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 59
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 61
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v11

    const/4 v12, 0x0

    .line 62
    :goto_0
    div-int/lit8 v13, v11, 0x4

    if-ge v12, v13, :cond_1

    .line 63
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 64
    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    invoke-virtual {v8, v6, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 65
    invoke-virtual {v8, v5, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 66
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 71
    :cond_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 72
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 73
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks;"

    .line 75
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS enc_tasks;"

    .line 76
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE messages ADD COLUMN media INTEGER default 0"

    .line 78
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 6"

    .line 79
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v0, 0x6

    :cond_3
    const/4 v8, 0x7

    if-ne v0, v4, :cond_4

    const-string v0, "CREATE TABLE IF NOT EXISTS messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    .line 83
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    .line 84
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN layer INTEGER default 0"

    .line 85
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN seq_in INTEGER default 0"

    .line 86
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN seq_out INTEGER default 0"

    .line 87
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 7"

    .line 88
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v0, 0x7

    :cond_4
    const/16 v9, 0x9

    const/16 v10, 0x8

    const/16 v11, 0xa

    if-eq v0, v8, :cond_5

    if-eq v0, v10, :cond_5

    if-ne v0, v9, :cond_6

    :cond_5
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN use_count INTEGER default 0"

    .line 92
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN exchange_id INTEGER default 0"

    .line 93
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN key_date INTEGER default 0"

    .line 94
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN fprint INTEGER default 0"

    .line 95
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN fauthkey BLOB default NULL"

    .line 96
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN khash BLOB default NULL"

    .line 97
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 10"

    .line 98
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa

    :cond_6
    const/16 v12, 0xb

    if-ne v0, v11, :cond_7

    const-string v0, "CREATE TABLE IF NOT EXISTS web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, PRIMARY KEY (id, type));"

    .line 102
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 11"

    .line 103
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xb

    :cond_7
    const/16 v13, 0xc

    const/16 v14, 0xd

    if-eq v0, v12, :cond_8

    if-ne v0, v13, :cond_9

    :cond_8
    const-string v0, "DROP INDEX IF EXISTS uid_mid_idx_media;"

    .line 107
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS mid_idx_media;"

    .line 108
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_idx_media;"

    .line 109
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS media;"

    .line 110
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS media_counts;"

    .line 111
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    .line 113
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    .line 114
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    .line 115
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    .line 117
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 13"

    .line 119
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xd

    :cond_9
    const/16 v15, 0xe

    if-ne v0, v14, :cond_a

    const-string v0, "ALTER TABLE messages ADD COLUMN replydata BLOB default NULL"

    .line 123
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 14"

    .line 124
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xe

    :cond_a
    const/16 v14, 0xf

    if-ne v0, v15, :cond_b

    const-string v0, "CREATE TABLE IF NOT EXISTS hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    .line 128
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 15"

    .line 129
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xf

    :cond_b
    const/16 v15, 0x10

    if-ne v0, v14, :cond_c

    const-string v0, "CREATE TABLE IF NOT EXISTS webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    .line 133
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 16"

    .line 134
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x10

    :cond_c
    const/16 v14, 0x11

    if-ne v0, v15, :cond_d

    const-string v0, "ALTER TABLE dialogs ADD COLUMN inbox_max INTEGER default 0"

    .line 138
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN outbox_max INTEGER default 0"

    .line 139
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 17"

    .line 140
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x11

    :cond_d
    const/16 v15, 0x12

    if-ne v0, v14, :cond_e

    const-string v0, "PRAGMA user_version = 18"

    .line 144
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x12

    :cond_e
    if-ne v0, v15, :cond_f

    const-string v0, "DROP TABLE IF EXISTS stickers;"

    .line 148
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash INTEGER);"

    .line 149
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 19"

    .line 150
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x13

    :cond_f
    const/16 v14, 0x13

    if-ne v0, v14, :cond_10

    const-string v0, "CREATE TABLE IF NOT EXISTS bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    .line 154
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    .line 155
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 20"

    .line 156
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x14

    :cond_10
    const/16 v14, 0x14

    if-ne v0, v14, :cond_11

    const-string v0, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    .line 160
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 21"

    .line 161
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x15

    :cond_11
    const/16 v14, 0x15

    const/4 v15, 0x0

    if-ne v0, v14, :cond_14

    const-string v0, "CREATE TABLE IF NOT EXISTS chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB)"

    .line 165
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v14, "SELECT uid, participants FROM chat_settings WHERE uid < 0"

    .line 167
    invoke-virtual {v2, v14, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const-string v14, "REPLACE INTO chat_settings_v2 VALUES(?, ?)"

    .line 168
    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    .line 169
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 170
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    int-to-long v12, v13

    .line 171
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 173
    invoke-virtual {v11, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v9

    invoke-static {v11, v9, v7}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-result-object v9

    .line 174
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v9, :cond_12

    .line 176
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 177
    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 178
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 179
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;-><init>()V

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 180
    iput-object v15, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 181
    iput-object v9, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 182
    new-instance v9, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v11}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v10

    invoke-direct {v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 183
    invoke-virtual {v11, v9}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 184
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 185
    invoke-virtual {v14, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 186
    invoke-virtual {v14, v5, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 187
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 188
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_12
    const/16 v9, 0x9

    const/16 v10, 0x8

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0xc

    goto :goto_1

    .line 192
    :cond_13
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 193
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS chat_settings;"

    .line 195
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN last_mid_i INTEGER default 0"

    .line 196
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN unread_count_i INTEGER default 0"

    .line 197
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN pts INTEGER default 0"

    .line 198
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN date_i INTEGER default 0"

    .line 199
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    .line 200
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    .line 201
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE messages ADD COLUMN imp INTEGER default 0"

    .line 202
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    .line 203
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    .line 204
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 22"

    .line 205
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x16

    :cond_14
    const/16 v9, 0x16

    if-ne v0, v9, :cond_15

    const-string v0, "CREATE TABLE IF NOT EXISTS media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    .line 209
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    .line 210
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 23"

    .line 211
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x17

    :cond_15
    const/16 v9, 0x17

    if-eq v0, v9, :cond_16

    const/16 v9, 0x18

    if-ne v0, v9, :cond_17

    :cond_16
    const-string v0, "DELETE FROM media_holes_v2 WHERE uid != 0 AND type >= 0 AND start IN (0, 1)"

    .line 215
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 25"

    .line 216
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x19

    :cond_17
    const/16 v9, 0x19

    if-eq v0, v9, :cond_18

    const/16 v9, 0x1a

    if-ne v0, v9, :cond_19

    :cond_18
    const-string v0, "CREATE TABLE IF NOT EXISTS channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    .line 220
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 27"

    .line 221
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1b

    :cond_19
    const/16 v9, 0x1b

    if-ne v0, v9, :cond_1a

    const-string v0, "ALTER TABLE web_recent_v3 ADD COLUMN document BLOB default NULL"

    .line 225
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 28"

    .line 226
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1c

    :cond_1a
    const/16 v9, 0x1c

    const-string v10, "DELETE FROM download_queue WHERE 1"

    if-eq v0, v9, :cond_1b

    const/16 v9, 0x1d

    if-ne v0, v9, :cond_1c

    :cond_1b
    const-string v0, "DELETE FROM sent_files_v2 WHERE 1"

    .line 230
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 231
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 30"

    .line 232
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1e

    :cond_1c
    const/16 v9, 0x1e

    if-ne v0, v9, :cond_1d

    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN pinned INTEGER default 0"

    .line 236
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    .line 237
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    .line 238
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 31"

    .line 239
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1f

    :cond_1d
    const/16 v9, 0x1f

    const/16 v11, 0x20

    if-ne v0, v9, :cond_1e

    const-string v0, "DROP TABLE IF EXISTS bot_recent;"

    .line 243
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    .line 244
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    .line 245
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 32"

    .line 246
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x20

    :cond_1e
    if-ne v0, v11, :cond_1f

    const-string v0, "DROP INDEX IF EXISTS uid_mid_idx_imp_messages;"

    .line 250
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_imp_idx_messages;"

    .line 251
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 33"

    .line 252
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x21

    :cond_1f
    const/16 v9, 0x21

    if-ne v0, v9, :cond_20

    const-string v0, "CREATE TABLE IF NOT EXISTS pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    .line 256
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 34"

    .line 257
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x22

    :cond_20
    const/16 v9, 0x22

    if-ne v0, v9, :cond_21

    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash INTEGER);"

    .line 261
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 35"

    .line 262
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x23

    :cond_21
    const/16 v9, 0x23

    if-ne v0, v9, :cond_22

    const-string v0, "CREATE TABLE IF NOT EXISTS requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    .line 266
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 36"

    .line 267
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x24

    :cond_22
    const/16 v9, 0x24

    if-ne v0, v9, :cond_23

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN in_seq_no INTEGER default 0"

    .line 271
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 37"

    .line 272
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x25

    :cond_23
    const/16 v9, 0x25

    if-ne v0, v9, :cond_24

    const-string v0, "CREATE TABLE IF NOT EXISTS botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    .line 276
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    .line 277
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 38"

    .line 278
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x26

    :cond_24
    const/16 v9, 0x26

    if-ne v0, v9, :cond_25

    const-string v0, "ALTER TABLE dialogs ADD COLUMN pinned INTEGER default 0"

    .line 282
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 39"

    .line 283
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x27

    :cond_25
    const/16 v9, 0x27

    if-ne v0, v9, :cond_26

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN admin_id INTEGER default 0"

    .line 287
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 40"

    .line 288
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x28

    :cond_26
    const/16 v9, 0x28

    if-ne v0, v9, :cond_27

    .line 292
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    const-string v0, "PRAGMA user_version = 41"

    .line 293
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x29

    :cond_27
    const/16 v9, 0x29

    if-ne v0, v9, :cond_28

    const-string v0, "ALTER TABLE messages ADD COLUMN mention INTEGER default 0"

    .line 297
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE user_contacts_v6 ADD COLUMN imported INTEGER default 0"

    .line 298
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages ON messages(uid, mention, read_state);"

    .line 299
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 42"

    .line 300
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2a

    :cond_28
    const/16 v9, 0x2a

    if-ne v0, v9, :cond_29

    const-string v0, "CREATE TABLE IF NOT EXISTS sharing_locations(uid INTEGER PRIMARY KEY, mid INTEGER, date INTEGER, period INTEGER, message BLOB);"

    .line 304
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 43"

    .line 305
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2b

    :cond_29
    const/16 v9, 0x2b

    if-ne v0, v9, :cond_2a

    const-string v0, "PRAGMA user_version = 44"

    .line 309
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2c

    :cond_2a
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_2b

    const-string v0, "CREATE TABLE IF NOT EXISTS user_contacts_v7(key TEXT PRIMARY KEY, uid INTEGER, fname TEXT, sname TEXT, imported INTEGER)"

    .line 313
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_phones_v7(key TEXT, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (key, phone))"

    .line 314
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v7(sphone, deleted);"

    .line 315
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 45"

    .line 316
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2d

    :cond_2b
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_2c

    const-string v0, "ALTER TABLE enc_chats ADD COLUMN mtproto_seq INTEGER default 0"

    .line 320
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 46"

    .line 321
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2e

    :cond_2c
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_2d

    const-string v0, "DELETE FROM botcache WHERE 1"

    .line 325
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 47"

    .line 326
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2f

    :cond_2d
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_2e

    const-string v0, "ALTER TABLE dialogs ADD COLUMN flags INTEGER default 0"

    .line 330
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 48"

    .line 331
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x30

    :cond_2e
    const/16 v9, 0x30

    if-ne v0, v9, :cond_2f

    const-string v0, "CREATE TABLE IF NOT EXISTS unread_push_messages(uid INTEGER, mid INTEGER, random INTEGER, date INTEGER, data BLOB, fm TEXT, name TEXT, uname TEXT, flags INTEGER, PRIMARY KEY(uid, mid))"

    .line 335
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS unread_push_messages_idx_date ON unread_push_messages(date);"

    .line 336
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS unread_push_messages_idx_random ON unread_push_messages(random);"

    .line 337
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 49"

    .line 338
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x31

    :cond_2f
    const/16 v9, 0x31

    if-ne v0, v9, :cond_30

    const-string v0, "CREATE TABLE IF NOT EXISTS user_settings(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    .line 342
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS user_settings_pinned_idx ON user_settings(uid, pinned) WHERE pinned != 0;"

    .line 343
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 50"

    .line 344
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x32

    :cond_30
    const/16 v9, 0x32

    if-ne v0, v9, :cond_31

    const-string v0, "DELETE FROM sent_files_v2 WHERE 1"

    .line 348
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE sent_files_v2 ADD COLUMN parent TEXT"

    .line 349
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 350
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE download_queue ADD COLUMN parent TEXT"

    .line 351
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 51"

    .line 352
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x33

    :cond_31
    const/16 v9, 0x33

    if-ne v0, v9, :cond_32

    const-string v0, "ALTER TABLE media_counts_v2 ADD COLUMN old INTEGER"

    .line 356
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 52"

    .line 357
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x34

    :cond_32
    const/16 v9, 0x34

    if-ne v0, v9, :cond_33

    const-string v0, "CREATE TABLE IF NOT EXISTS polls_v2(mid INTEGER, uid INTEGER, id INTEGER, PRIMARY KEY (mid, uid));"

    .line 361
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS polls_id ON polls_v2(id);"

    .line 362
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 53"

    .line 363
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x35

    :cond_33
    const/16 v9, 0x35

    if-ne v0, v9, :cond_34

    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN online INTEGER default 0"

    .line 367
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 54"

    .line 368
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x36

    :cond_34
    const/16 v9, 0x36

    if-ne v0, v9, :cond_35

    const-string v0, "DROP TABLE IF EXISTS wallpapers;"

    .line 372
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 55"

    .line 373
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x37

    :cond_35
    const/16 v9, 0x37

    if-ne v0, v9, :cond_36

    const-string v0, "CREATE TABLE IF NOT EXISTS wallpapers2(uid INTEGER PRIMARY KEY, data BLOB, num INTEGER)"

    .line 377
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS wallpapers_num ON wallpapers2(num);"

    .line 378
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 56"

    .line 379
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x38

    :cond_36
    const/16 v9, 0x38

    if-eq v0, v9, :cond_37

    const/16 v9, 0x39

    if-ne v0, v9, :cond_38

    :cond_37
    const-string v0, "CREATE TABLE IF NOT EXISTS emoji_keywords_v2(lang TEXT, keyword TEXT, emoji TEXT, PRIMARY KEY(lang, keyword, emoji));"

    .line 383
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS emoji_keywords_info_v2(lang TEXT PRIMARY KEY, alias TEXT, version INTEGER);"

    .line 384
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 58"

    .line 385
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3a

    :cond_38
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_39

    const-string v0, "CREATE INDEX IF NOT EXISTS emoji_keywords_v2_keyword ON emoji_keywords_v2(keyword);"

    .line 389
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE emoji_keywords_info_v2 ADD COLUMN date INTEGER default 0"

    .line 390
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 59"

    .line 391
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3b

    :cond_39
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_3a

    const-string v0, "ALTER TABLE dialogs ADD COLUMN folder_id INTEGER default 0"

    .line 395
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN data BLOB default NULL"

    .line 396
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON dialogs(folder_id);"

    .line 397
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 60"

    .line 398
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3c

    :cond_3a
    const/16 v9, 0x3c

    if-ne v0, v9, :cond_3b

    const-string v0, "DROP TABLE IF EXISTS channel_admins;"

    .line 402
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS blocked_users;"

    .line 403
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 61"

    .line 404
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3d

    :cond_3b
    const/16 v9, 0x3d

    if-ne v0, v9, :cond_3c

    const-string v0, "DROP INDEX IF EXISTS send_state_idx_messages;"

    .line 408
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages2 ON messages(mid, send_state, date);"

    .line 409
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 62"

    .line 410
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3e

    :cond_3c
    const/16 v9, 0x3e

    if-ne v0, v9, :cond_3d

    const-string v0, "CREATE TABLE IF NOT EXISTS scheduled_messages(mid INTEGER PRIMARY KEY, uid INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB)"

    .line 414
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_scheduled_messages ON scheduled_messages(mid, send_state, date);"

    .line 415
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_idx_scheduled_messages ON scheduled_messages(uid, date);"

    .line 416
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 63"

    .line 417
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3f

    :cond_3d
    const/16 v9, 0x3f

    if-ne v0, v9, :cond_3e

    .line 421
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 64"

    .line 422
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x40

    :cond_3e
    const/16 v9, 0x40

    if-ne v0, v9, :cond_3f

    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_filter(id INTEGER PRIMARY KEY, ord INTEGER, unread_count INTEGER, flags INTEGER, title TEXT)"

    .line 426
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_filter_ep(id INTEGER, peer INTEGER, PRIMARY KEY (id, peer))"

    .line 427
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 65"

    .line 428
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x41

    :cond_3f
    const/16 v9, 0x41

    if-ne v0, v9, :cond_40

    const-string v0, "CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON dialogs(flags);"

    .line 432
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 66"

    .line 433
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x42

    :cond_40
    const/16 v9, 0x42

    if-ne v0, v9, :cond_41

    const-string v0, "CREATE TABLE dialog_filter_pin_v2(id INTEGER, peer INTEGER, pin INTEGER, PRIMARY KEY (id, peer))"

    .line 437
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 67"

    .line 438
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x43

    :cond_41
    const/16 v9, 0x43

    if-ne v0, v9, :cond_42

    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_dice(emoji TEXT PRIMARY KEY, data BLOB, date INTEGER);"

    .line 442
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 68"

    .line 443
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x44

    :cond_42
    const/16 v9, 0x44

    if-ne v0, v9, :cond_43

    const-string v0, "ALTER TABLE messages ADD COLUMN forwards INTEGER default 0"

    .line 447
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 69"

    .line 448
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x45

    :cond_43
    const/16 v9, 0x45

    if-ne v0, v9, :cond_44

    const-string v0, "ALTER TABLE messages ADD COLUMN replies_data BLOB default NULL"

    .line 452
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE messages ADD COLUMN thread_reply_id INTEGER default 0"

    .line 453
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 70"

    .line 454
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x46

    :cond_44
    const/16 v9, 0x46

    if-ne v0, v9, :cond_45

    const-string v0, "CREATE TABLE IF NOT EXISTS chat_pinned_v2(uid INTEGER, mid INTEGER, data BLOB, PRIMARY KEY (uid, mid));"

    .line 458
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 71"

    .line 459
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x47

    :cond_45
    const/16 v9, 0x47

    if-ne v0, v9, :cond_46

    const-string v0, "ALTER TABLE sharing_locations ADD COLUMN proximity INTEGER default 0"

    .line 463
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 72"

    .line 464
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x48

    :cond_46
    const/16 v9, 0x48

    if-ne v0, v9, :cond_47

    const-string v0, "CREATE TABLE IF NOT EXISTS chat_pinned_count(uid INTEGER PRIMARY KEY, count INTEGER, end INTEGER);"

    .line 468
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 73"

    .line 469
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x49

    :cond_47
    const/16 v9, 0x49

    if-ne v0, v9, :cond_48

    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN inviter INTEGER default 0"

    .line 473
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 74"

    .line 474
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4a

    :cond_48
    const/16 v9, 0x4a

    if-ne v0, v9, :cond_49

    const-string v0, "CREATE TABLE IF NOT EXISTS shortcut_widget(id INTEGER, did INTEGER, ord INTEGER, PRIMARY KEY (id, did));"

    .line 478
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS shortcut_widget_did ON shortcut_widget(did);"

    .line 479
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 75"

    .line 480
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4b

    :cond_49
    const/16 v9, 0x4b

    if-ne v0, v9, :cond_4a

    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN links INTEGER default 0"

    .line 484
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 76"

    .line 485
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4c

    :cond_4a
    const/16 v9, 0x4c

    if-ne v0, v9, :cond_4b

    const-string v0, "ALTER TABLE enc_tasks_v2 ADD COLUMN media INTEGER default -1"

    .line 489
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 77"

    .line 490
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4d

    :cond_4b
    const/16 v9, 0x4d

    if-ne v0, v9, :cond_4c

    const-string v0, "DROP TABLE IF EXISTS channel_admins_v2;"

    .line 494
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS channel_admins_v3(did INTEGER, uid INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    .line 495
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 78"

    .line 496
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4e

    :cond_4c
    const/16 v9, 0x4e

    if-ne v0, v9, :cond_4d

    const-string v0, "DROP TABLE IF EXISTS bot_info;"

    .line 500
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS bot_info_v2(uid INTEGER, dialogId INTEGER, info BLOB, PRIMARY KEY(uid, dialogId))"

    .line 501
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 79"

    .line 502
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4f

    :cond_4d
    const/16 v9, 0x4f

    const/4 v10, 0x3

    if-ne v0, v9, :cond_4f

    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v3(mid INTEGER, date INTEGER, media INTEGER, PRIMARY KEY(mid, media))"

    .line 506
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v3 ON enc_tasks_v3(date);"

    .line 507
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 509
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v9, "SELECT mid, date, media FROM enc_tasks_v2 WHERE 1"

    .line 510
    invoke-virtual {v2, v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const-string v9, "REPLACE INTO enc_tasks_v3 VALUES(?, ?, ?)"

    .line 511
    invoke-virtual {v2, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 512
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 513
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 514
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 515
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 517
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 518
    invoke-virtual {v9, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 519
    invoke-virtual {v9, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 520
    invoke-virtual {v9, v10, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 521
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 523
    :cond_4e
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 524
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 525
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks_v2;"

    .line 527
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS enc_tasks_v2;"

    .line 528
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 80"

    .line 530
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x50

    :cond_4f
    const/16 v9, 0x50

    const/4 v12, 0x5

    if-ne v0, v9, :cond_55

    const-string v0, "CREATE TABLE IF NOT EXISTS scheduled_messages_v2(mid INTEGER, uid INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB, PRIMARY KEY(mid, uid))"

    .line 534
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, send_state, date);"

    .line 535
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_idx_scheduled_messages_v2 ON scheduled_messages_v2(uid, date);"

    .line 536
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid_v2 ON bot_keyboard(mid, uid);"

    .line 538
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS bot_keyboard_idx_mid;"

    .line 539
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 541
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "SELECT mid, uid, send_state, date, data, ttl, replydata FROM scheduled_messages_v2 WHERE 1"

    new-array v9, v7, [Ljava/lang/Object;

    .line 544
    invoke-virtual {v2, v0, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 547
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_54

    const-string v9, "REPLACE INTO scheduled_messages_v2 VALUES(?, ?, ?, ?, ?, ?, ?)"

    .line 550
    invoke-virtual {v2, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 551
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_53

    .line 552
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    if-nez v13, :cond_50

    goto :goto_3

    .line 556
    :cond_50
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 557
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v7

    .line 558
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 559
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 560
    invoke-virtual {v0, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    .line 561
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v12

    .line 563
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 564
    invoke-virtual {v9, v6, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 565
    invoke-virtual {v9, v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 566
    invoke-virtual {v9, v10, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 567
    invoke-virtual {v9, v7, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v7, 0x5

    .line 568
    invoke-virtual {v9, v7, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 569
    invoke-virtual {v9, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v12, :cond_51

    const/4 v3, 0x7

    .line 571
    invoke-virtual {v9, v3, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_4

    :cond_51
    const/4 v3, 0x7

    .line 573
    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    .line 575
    :goto_4
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    if-eqz v12, :cond_52

    .line 577
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 579
    :cond_52
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v3, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v11, 0x20

    const/4 v12, 0x5

    goto :goto_3

    .line 581
    :cond_53
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 582
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_54
    const-string v0, "DROP INDEX IF EXISTS send_state_idx_scheduled_messages;"

    .line 585
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_date_idx_scheduled_messages;"

    .line 586
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS scheduled_messages;"

    .line 587
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 589
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "PRAGMA user_version = 81"

    .line 590
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x51

    :cond_55
    const/16 v3, 0x51

    if-ne v0, v3, :cond_5a

    const-string v0, "CREATE TABLE IF NOT EXISTS media_v3(mid INTEGER, uid INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid))"

    .line 594
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_v3 ON media_v3(uid, mid, type, date);"

    .line 595
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 597
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v0, "SELECT mid, uid, date, type, data FROM media_v2 WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 600
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 603
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_59

    const-string v3, "REPLACE INTO media_v3 VALUES(?, ?, ?, ?, ?)"

    .line 606
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 607
    :goto_6
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_58

    const/4 v7, 0x4

    .line 608
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-nez v8, :cond_56

    goto :goto_6

    :cond_56
    const/4 v7, 0x0

    .line 612
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 613
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v7, v11

    if-nez v7, :cond_57

    const/16 v7, 0x20

    shr-long/2addr v11, v7

    long-to-int v7, v11

    int-to-long v11, v7

    .line 617
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 619
    :cond_57
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 620
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 622
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 623
    invoke-virtual {v3, v6, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 624
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 625
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 626
    invoke-virtual {v3, v7, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x5

    .line 627
    invoke-virtual {v3, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 628
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 629
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_6

    .line 631
    :cond_58
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 632
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_59
    const-string v0, "DROP INDEX IF EXISTS uid_mid_type_date_idx_media;"

    .line 635
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS media_v2;"

    .line 636
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 637
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "PRAGMA user_version = 82"

    .line 639
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x52

    :cond_5a
    const/16 v3, 0x52

    if-ne v0, v3, :cond_67

    const-string v0, "CREATE TABLE IF NOT EXISTS randoms_v2(random_id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (random_id, mid, uid))"

    .line 643
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_idx_randoms_v2 ON randoms_v2(mid, uid);"

    .line 644
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v4(mid INTEGER, uid INTEGER, date INTEGER, media INTEGER, PRIMARY KEY(mid, uid, media))"

    .line 646
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v4 ON enc_tasks_v4(date);"

    .line 647
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS polls_v2(mid INTEGER, uid INTEGER, id INTEGER, PRIMARY KEY (mid, uid));"

    .line 649
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS polls_id_v2 ON polls_v2(id);"

    .line 650
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS webpage_pending_v2(id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (id, mid, uid));"

    .line 652
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 654
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string v0, "SELECT r.random_id, r.mid, m.uid FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 658
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 661
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_5d

    const-string v3, "REPLACE INTO randoms_v2 VALUES(?, ?, ?)"

    .line 664
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 665
    :goto_8
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5c

    const/4 v7, 0x0

    .line 666
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 667
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 668
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v13, v11

    if-nez v13, :cond_5b

    const/16 v13, 0x20

    shr-long/2addr v11, v13

    long-to-int v12, v11

    int-to-long v11, v12

    .line 672
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 675
    :cond_5b
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 676
    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 677
    invoke-virtual {v3, v5, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 678
    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 679
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_8

    .line 681
    :cond_5c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 682
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5d
    :try_start_3
    const-string v0, "SELECT p.mid, m.uid, p.id FROM polls as p INNER JOIN messages as m ON p.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 686
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 689
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_60

    const-string v3, "REPLACE INTO polls_v2 VALUES(?, ?, ?)"

    .line 692
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 693
    :goto_a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 v7, 0x0

    .line 694
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 695
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 696
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    long-to-int v7, v11

    if-nez v7, :cond_5e

    const/16 v7, 0x20

    shr-long/2addr v11, v7

    long-to-int v7, v11

    int-to-long v11, v7

    .line 700
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 703
    :cond_5e
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 704
    invoke-virtual {v3, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 705
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 706
    invoke-virtual {v3, v10, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 707
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_a

    .line 709
    :cond_5f
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 710
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_60
    :try_start_4
    const-string v0, "SELECT wp.id, wp.mid, m.uid FROM webpage_pending as wp INNER JOIN messages as m ON wp.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 714
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    .line 717
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_63

    const-string v3, "REPLACE INTO webpage_pending_v2 VALUES(?, ?, ?)"

    .line 720
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 721
    :goto_c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_62

    const/4 v7, 0x0

    .line 722
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 723
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 724
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v13, v11

    if-nez v13, :cond_61

    const/16 v13, 0x20

    shr-long/2addr v11, v13

    long-to-int v12, v11

    int-to-long v11, v12

    .line 728
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 731
    :cond_61
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 732
    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 733
    invoke-virtual {v3, v5, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 734
    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 735
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_c

    .line 737
    :cond_62
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 738
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_63
    :try_start_5
    const-string v0, "SELECT et.mid, m.uid, et.date, et.media FROM enc_tasks_v3 as et INNER JOIN messages as m ON et.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 742
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 745
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_66

    const-string v3, "REPLACE INTO enc_tasks_v4 VALUES(?, ?, ?, ?)"

    .line 748
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 749
    :goto_e
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_65

    const/4 v7, 0x0

    .line 750
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 751
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 752
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 753
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    long-to-int v13, v11

    if-nez v13, :cond_64

    const/16 v13, 0x20

    shr-long/2addr v11, v13

    long-to-int v12, v11

    int-to-long v11, v12

    .line 758
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 761
    :cond_64
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 762
    invoke-virtual {v3, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 763
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 764
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 765
    invoke-virtual {v3, v7, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 766
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_e

    .line 768
    :cond_65
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 769
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_66
    const-string v0, "DROP INDEX IF EXISTS mid_idx_randoms;"

    .line 772
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS randoms;"

    .line 773
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks_v3;"

    .line 775
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS enc_tasks_v3;"

    .line 776
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS polls_id;"

    .line 778
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS polls;"

    .line 779
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS webpage_pending;"

    .line 781
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 782
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "PRAGMA user_version = 83"

    .line 784
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x53

    :cond_67
    const/16 v3, 0x53

    if-ne v0, v3, :cond_7e

    const-string v0, "CREATE TABLE IF NOT EXISTS messages_v2(mid INTEGER, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, PRIMARY KEY(mid, uid))"

    .line 788
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_v2 ON messages_v2(uid, mid, read_state, out);"

    .line 789
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_v2 ON messages_v2(uid, date, mid);"

    .line 790
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages_v2 ON messages_v2(mid, out);"

    .line 791
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages_v2 ON messages_v2(uid, out, read_state, ttl, date, send_state);"

    .line 792
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages_v2 ON messages_v2(mid, send_state, date);"

    .line 793
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_v2 ON messages_v2(uid, mention, read_state);"

    .line 794
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS is_channel_idx_messages_v2 ON messages_v2(mid, is_channel);"

    .line 795
    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 797
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :try_start_6
    const-string v0, "SELECT mid, uid, read_state, send_state, date, data, out, ttl, media, replydata, imp, mention, forwards, replies_data, thread_reply_id FROM messages WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 802
    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    .line 805
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_73

    const-string v3, "REPLACE INTO messages_v2 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 808
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 810
    :goto_10
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v7, 0x5

    .line 811
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-nez v8, :cond_68

    goto :goto_10

    :cond_68
    const/4 v7, 0x0

    .line 816
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    int-to-long v11, v9

    .line 817
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    long-to-int v7, v13

    if-nez v7, :cond_69

    const/16 v7, 0x20

    shr-long/2addr v13, v7

    long-to-int v7, v13

    int-to-long v13, v7

    .line 821
    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v13

    .line 823
    :cond_69
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 824
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    const/4 v15, 0x4

    .line 825
    invoke-virtual {v0, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 826
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    const/4 v4, 0x7

    .line 827
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    const/16 v4, 0x8

    .line 828
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    move/from16 v17, v15

    const/16 v4, 0x9

    .line 829
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v15

    const/16 v4, 0xa

    .line 830
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    move-object/from16 v18, v2

    const/16 v4, 0xb

    .line 831
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move/from16 v19, v2

    const/16 v4, 0xc

    .line 832
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move/from16 v20, v2

    const/16 v4, 0xd

    .line 833
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    move-object/from16 v21, v2

    const/16 v4, 0xe

    .line 834
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v22, v0

    move/from16 v23, v1

    const/16 v4, 0x20

    shr-long v0, v13, v4

    long-to-int v1, v0

    if-gez v5, :cond_6c

    const/4 v4, 0x0

    .line 837
    invoke-virtual {v8, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    invoke-static {v8, v0, v4}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    move/from16 v4, v17

    move/from16 v17, v1

    if-eqz v0, :cond_6b

    .line 839
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    move/from16 v24, v2

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;J)V

    .line 840
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v1, :cond_6a

    .line 841
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v15

    const-string v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "fwd_peer"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_6a
    move-object/from16 v25, v15

    .line 844
    :goto_11
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 845
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 846
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    move-object v8, v1

    goto :goto_12

    :cond_6b
    move/from16 v24, v2

    move-object/from16 v25, v15

    :goto_12
    const/4 v15, 0x0

    goto :goto_13

    :cond_6c
    move/from16 v24, v2

    move-object/from16 v25, v15

    move/from16 v4, v17

    move/from16 v17, v1

    move v15, v5

    .line 851
    :goto_13
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    long-to-int v0, v11

    const/4 v1, 0x1

    .line 852
    invoke-virtual {v3, v1, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x2

    .line 853
    invoke-virtual {v3, v1, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 854
    invoke-virtual {v3, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x4

    .line 855
    invoke-virtual {v3, v1, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x5

    .line 856
    invoke-virtual {v3, v1, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x6

    .line 857
    invoke-virtual {v3, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v2, 0x7

    .line 858
    invoke-virtual {v3, v2, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0x8

    .line 859
    invoke-virtual {v3, v4, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0x9

    .line 860
    invoke-virtual {v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v25, :cond_6d

    move-object/from16 v0, v25

    const/16 v6, 0xa

    .line 862
    invoke-virtual {v3, v6, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_14

    :cond_6d
    move-object/from16 v0, v25

    const/16 v6, 0xa

    .line 864
    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    :goto_14
    move/from16 v7, v23

    const/16 v9, 0xb

    .line 866
    invoke-virtual {v3, v9, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    move/from16 v7, v19

    const/16 v10, 0xc

    .line 867
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    move/from16 v7, v20

    const/16 v11, 0xd

    .line 868
    invoke-virtual {v3, v11, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v21, :cond_6e

    move-object/from16 v7, v21

    const/16 v12, 0xe

    .line 870
    invoke-virtual {v3, v12, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_15

    :cond_6e
    move-object/from16 v7, v21

    const/16 v12, 0xe

    .line 872
    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    :goto_15
    move/from16 v13, v24

    const/16 v14, 0xf

    .line 874
    invoke-virtual {v3, v14, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v13, 0x10

    if-lez v17, :cond_6f

    const/4 v15, 0x1

    goto :goto_16

    :cond_6f
    const/4 v15, 0x0

    .line 875
    :goto_16
    invoke-virtual {v3, v13, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 876
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    if-eqz v0, :cond_70

    .line 878
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_70
    if-eqz v7, :cond_71

    .line 881
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 883
    :cond_71
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v0, v22

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x3

    goto/16 :goto_10

    :cond_72
    move-object/from16 v22, v0

    move-object/from16 v18, v2

    .line 885
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 886
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_17

    :cond_73
    move-object/from16 v18, v2

    :goto_17
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "SELECT did, last_mid, last_mid_i FROM dialogs WHERE 1"

    move-object/from16 v3, v18

    .line 891
    invoke-virtual {v3, v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const-string v2, "UPDATE dialogs SET last_mid = ?, last_mid_i = ? WHERE did = ?"

    .line 892
    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 893
    :goto_18
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 894
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    long-to-int v1, v6

    const/16 v8, 0x20

    shr-long v9, v6, v8

    long-to-int v8, v9

    if-nez v1, :cond_75

    if-nez v4, :cond_74

    .line 899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 901
    :cond_74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_75
    const/4 v9, 0x2

    if-ne v8, v9, :cond_77

    if-nez v5, :cond_76

    .line 904
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 906
    :cond_76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_77
    :goto_19
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 910
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x2

    .line 911
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x3

    .line 912
    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 913
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    const/4 v1, 0x0

    goto :goto_18

    .line 915
    :cond_78
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 916
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "SELECT uid, mid FROM unread_push_messages WHERE 1"

    .line 918
    invoke-virtual {v3, v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const-string v2, "UPDATE unread_push_messages SET mid = ? WHERE uid = ? AND mid = ?"

    .line 919
    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 920
    :goto_1a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 921
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    const/4 v1, 0x1

    .line 922
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 923
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 924
    invoke-virtual {v2, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x2

    .line 925
    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 926
    invoke-virtual {v2, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 927
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    const/4 v1, 0x0

    goto :goto_1a

    .line 929
    :cond_79
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 930
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v4, :cond_7b

    const-string v0, "UPDATE dialogs SET did = ? WHERE did = ?"

    .line 933
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const-string v1, "UPDATE dialog_filter_pin_v2 SET peer = ? WHERE peer = ?"

    .line 934
    invoke-virtual {v3, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const-string v2, "UPDATE dialog_filter_ep SET peer = ? WHERE peer = ?"

    .line 935
    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 936
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_7a

    .line 937
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    .line 939
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v10

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    .line 941
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v12, 0x1

    .line 942
    invoke-virtual {v0, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    .line 943
    invoke-virtual {v0, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 944
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 946
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 947
    invoke-virtual {v1, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 948
    invoke-virtual {v1, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 949
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 951
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 952
    invoke-virtual {v2, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 953
    invoke-virtual {v2, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 954
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 956
    :cond_7a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 957
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 958
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_7b
    if-eqz v5, :cond_7d

    const-string v0, "UPDATE dialogs SET did = ? WHERE did = ?"

    .line 961
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 962
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_7c

    .line 963
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 965
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide v6

    const-wide v8, 0x200000000L

    int-to-long v10, v4

    or-long/2addr v8, v10

    .line 967
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    .line 968
    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    .line 969
    invoke-virtual {v0, v4, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 970
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 972
    :cond_7c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_7d
    const-string v0, "DROP INDEX IF EXISTS uid_mid_read_out_idx_messages;"

    .line 975
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_idx_messages;"

    .line 976
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS mid_out_idx_messages;"

    .line 977
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS task_idx_messages;"

    .line 978
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS send_state_idx_messages2;"

    .line 979
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_mention_idx_messages;"

    .line 980
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP TABLE IF EXISTS messages;"

    .line 981
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 982
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "PRAGMA user_version = 84"

    .line 984
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x54

    goto :goto_1d

    :cond_7e
    move-object v3, v2

    :goto_1d
    const/16 v1, 0x54

    if-ne v0, v1, :cond_83

    const-string v0, "CREATE TABLE IF NOT EXISTS media_v4(mid INTEGER, uid INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, type))"

    .line 988
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 989
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    const-string v0, "SELECT mid, uid, date, type, data FROM media_v3 WHERE 1"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 992
    invoke-virtual {v3, v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    .line 995
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_82

    const-string v1, "REPLACE INTO media_v4 VALUES(?, ?, ?, ?, ?)"

    .line 998
    invoke-virtual {v3, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 999
    :goto_1f
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, 0x4

    .line 1000
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-nez v4, :cond_7f

    goto :goto_1f

    :cond_7f
    const/4 v2, 0x0

    .line 1004
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    const/4 v6, 0x1

    .line 1005
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v7

    long-to-int v6, v7

    if-nez v6, :cond_80

    const/16 v6, 0x20

    shr-long/2addr v7, v6

    long-to-int v8, v7

    int-to-long v7, v8

    .line 1009
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v7

    goto :goto_20

    :cond_80
    const/16 v6, 0x20

    :goto_20
    const/4 v9, 0x2

    .line 1011
    invoke-virtual {v0, v9}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    const/4 v11, 0x3

    .line 1012
    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    .line 1014
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v13, 0x1

    .line 1015
    invoke-virtual {v1, v13, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1016
    invoke-virtual {v1, v9, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1017
    invoke-virtual {v1, v11, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    .line 1018
    invoke-virtual {v1, v5, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x5

    .line 1019
    invoke-virtual {v1, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1020
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1021
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_1f

    .line 1023
    :cond_81
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1024
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1026
    :cond_82
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    const-string v0, "DROP TABLE IF EXISTS media_v3;"

    .line 1028
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 85"

    .line 1029
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x55

    :cond_83
    const/16 v1, 0x55

    if-ne v0, v1, :cond_84

    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN reply_to_message_id INTEGER default 0"

    move-object/from16 v1, p0

    .line 1033
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE scheduled_messages_v2 ADD COLUMN reply_to_message_id INTEGER default 0"

    .line 1034
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_messages_v2 ON messages_v2(mid, reply_to_message_id);"

    .line 1036
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, reply_to_message_id);"

    .line 1037
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "UPDATE messages_v2 SET replydata = NULL"

    .line 1039
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "UPDATE scheduled_messages_v2 SET replydata = NULL"

    .line 1040
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 86"

    .line 1041
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x56

    goto :goto_21

    :cond_84
    move-object/from16 v1, p0

    :goto_21
    const/16 v2, 0x56

    if-ne v0, v2, :cond_85

    const-string v0, "CREATE TABLE IF NOT EXISTS reactions(data BLOB, hash INTEGER, date INTEGER);"

    .line 1046
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 87"

    .line 1047
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x57

    :cond_85
    const/16 v2, 0x57

    if-ne v0, v2, :cond_86

    const-string v0, "ALTER TABLE dialogs ADD COLUMN unread_reactions INTEGER default 0"

    .line 1052
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE reaction_mentions(message_id INTEGER PRIMARY KEY, state INTEGER);"

    .line 1053
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 88"

    .line 1054
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x58

    :cond_86
    const/16 v2, 0x58

    if-eq v0, v2, :cond_87

    const/16 v2, 0x59

    if-ne v0, v2, :cond_88

    :cond_87
    const-string v0, "DROP TABLE IF EXISTS reaction_mentions;"

    .line 1059
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS reaction_mentions(message_id INTEGER, state INTEGER, dialog_id INTEGER, PRIMARY KEY(dialog_id, message_id));"

    .line 1060
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS reaction_mentions_did ON reaction_mentions(dialog_id);"

    .line 1061
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_mid_type_date_idx_media_v3"

    .line 1063
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_v4 ON media_v4(uid, mid, type, date);"

    .line 1064
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 90"

    .line 1066
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5a

    :cond_88
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_89

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_8a

    :cond_89
    const-string v0, "DROP TABLE IF EXISTS downloading_documents;"

    .line 1072
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE downloading_documents(data BLOB, hash INTEGER, id INTEGER, state INTEGER, date INTEGER, PRIMARY KEY(hash, id));"

    .line 1073
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 92"

    .line 1074
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5c

    :cond_8a
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_8b

    const-string v0, "CREATE TABLE IF NOT EXISTS attach_menu_bots(data BLOB, hash INTEGER, date INTEGER);"

    .line 1079
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 93"

    .line 1080
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5f

    :cond_8b
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_8c

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_8d

    :cond_8c
    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN custom_params BLOB default NULL"

    .line 1085
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    const-string v0, "PRAGMA user_version = 96"

    .line 1086
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x60

    :cond_8d
    const/16 v1, 0x60

    if-ne v0, v1, :cond_8e

    const-string v0, "CREATE TABLE IF NOT EXISTS premium_promo(data BLOB, date INTEGER);"

    .line 1092
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "UPDATE stickers_v2 SET date = 0"

    .line 1093
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    const-string v0, "PRAGMA user_version = 97"

    .line 1094
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x61

    :cond_8e
    const/16 v1, 0x61

    if-ne v0, v1, :cond_8f

    const-string v0, "DROP TABLE IF EXISTS stickers_featured;"

    .line 1099
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash INTEGER, premium INTEGER);"

    .line 1100
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 98"

    .line 1101
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x62

    :cond_8f
    const/16 v1, 0x62

    if-ne v0, v1, :cond_90

    const-string v0, "CREATE TABLE animated_emoji(document_id INTEGER PRIMARY KEY, data BLOB);"

    .line 1106
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 99"

    .line 1107
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x63

    :cond_90
    const/16 v1, 0x63

    if-ne v0, v1, :cond_91

    const-string v0, "ALTER TABLE stickers_featured ADD COLUMN emoji INTEGER default 0"

    .line 1112
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 100"

    .line 1113
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x64

    :cond_91
    const/16 v1, 0x64

    if-ne v0, v1, :cond_92

    const-string v0, "CREATE TABLE emoji_statuses(data BLOB, type INTEGER);"

    .line 1118
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 101"

    .line 1119
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x65

    :cond_92
    const/16 v1, 0x65

    if-ne v0, v1, :cond_93

    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN group_id INTEGER default NULL"

    .line 1124
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "ALTER TABLE dialogs ADD COLUMN last_mid_group INTEGER default NULL"

    .line 1125
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_groupid_messages_v2 ON messages_v2(uid, mid, group_id);"

    .line 1126
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 102"

    .line 1128
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x66

    :cond_93
    const/16 v1, 0x66

    if-ne v0, v1, :cond_94

    const-string v0, "CREATE TABLE messages_holes_topics(uid INTEGER, topic_id INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, start));"

    .line 1133
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes_topics(uid, topic_id, end);"

    .line 1134
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE messages_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, reply_to_message_id INTEGER, custom_params BLOB, PRIMARY KEY(mid, topic_id, uid))"

    .line 1136
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_topics ON messages_topics(uid, mid, read_state, out);"

    .line 1137
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_topics ON messages_topics(uid, date, mid);"

    .line 1138
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages_topics ON messages_topics(mid, out);"

    .line 1139
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages_topics ON messages_topics(uid, out, read_state, ttl, date, send_state);"

    .line 1140
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages_topics ON messages_topics(mid, send_state, date);"

    .line 1141
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_topics ON messages_topics(uid, mention, read_state);"

    .line 1142
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS is_channel_idx_messages_topics ON messages_topics(mid, is_channel);"

    .line 1143
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_messages_topics ON messages_topics(mid, reply_to_message_id);"

    .line 1144
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_uid_messages_topics ON messages_topics(mid, uid);"

    .line 1145
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS mid_uid_topic_id_messages_topics ON messages_topics(mid, topic_id, uid);"

    .line 1146
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE media_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, topic_id, type))"

    .line 1148
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_topics ON media_topics(uid, topic_id, mid, type, date);"

    .line 1149
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE media_holes_topics(uid INTEGER, topic_id INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, type, start));"

    .line 1151
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_topics ON media_holes_topics(uid, topic_id, type, end);"

    .line 1152
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE topics(did INTEGER, topic_id INTEGER, data BLOB, top_message INTEGER, topic_message BLOB, unread_count INTEGER, max_read_id INTEGER, unread_mentions INTEGER, unread_reactions INTEGER, PRIMARY KEY(did, topic_id));"

    .line 1154
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS did_top_message_topics ON topics(did, top_message);"

    .line 1155
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 103"

    .line 1157
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x67

    :cond_94
    const/16 v1, 0x67

    if-ne v0, v1, :cond_95

    const-string v0, "CREATE TABLE IF NOT EXISTS media_counts_topics(uid INTEGER, topic_id INTEGER, type INTEGER, count INTEGER, old INTEGER, PRIMARY KEY(uid, topic_id, type))"

    .line 1162
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE TABLE IF NOT EXISTS reaction_mentions_topics(message_id INTEGER, state INTEGER, dialog_id INTEGER, topic_id INTEGER, PRIMARY KEY(message_id, dialog_id, topic_id))"

    .line 1163
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS reaction_mentions_topics_did ON reaction_mentions_topics(dialog_id, topic_id);"

    .line 1164
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 104"

    .line 1166
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x68

    :cond_95
    const/16 v1, 0x68

    if-ne v0, v1, :cond_96

    const-string v0, "ALTER TABLE topics ADD COLUMN read_outbox INTEGER default 0"

    .line 1171
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 105"

    .line 1173
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x69

    :cond_96
    const/16 v1, 0x69

    if-ne v0, v1, :cond_97

    const-string v0, "ALTER TABLE topics ADD COLUMN pinned INTEGER default 0"

    .line 1178
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 106"

    .line 1180
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6a

    :cond_97
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_98

    const-string v0, "DROP INDEX IF EXISTS uid_mid_read_out_idx_messages_topics"

    .line 1185
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DROP INDEX IF EXISTS uid_mention_idx_messages_topics"

    .line 1186
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_topics ON messages_topics(uid, topic_id, mid, read_state, out);"

    .line 1188
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_topics ON messages_topics(uid, topic_id, mention, read_state);"

    .line 1189
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_messages_topics ON messages_topics(uid, topic_id);"

    .line 1191
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_date_mid_messages_topics ON messages_topics(uid, topic_id, date, mid);"

    .line 1192
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_mid_messages_topics ON messages_topics(uid, topic_id, mid);"

    .line 1193
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "CREATE INDEX IF NOT EXISTS did_topics ON topics(did);"

    .line 1195
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 107"

    .line 1197
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6b

    :cond_98
    const/16 v1, 0x6b

    if-ne v0, v1, :cond_99

    const-string v0, "ALTER TABLE topics ADD COLUMN total_messages_count INTEGER default 0"

    .line 1202
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 108"

    .line 1203
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6c

    :cond_99
    const/16 v1, 0x6c

    if-ne v0, v1, :cond_9a

    const-string v0, "ALTER TABLE topics ADD COLUMN hidden INTEGER default 0"

    .line 1208
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 109"

    .line 1209
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6d

    :cond_9a
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_9b

    const-string v0, "ALTER TABLE dialogs ADD COLUMN ttl_period INTEGER default 0"

    .line 1214
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 110"

    .line 1215
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6e

    :cond_9b
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_9c

    const-string v0, "CREATE TABLE stickersets(id INTEGER PRIMATE KEY, data BLOB, hash INTEGER);"

    .line 1220
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 111"

    .line 1221
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6f

    :cond_9c
    const/16 v1, 0x6f

    if-ne v0, v1, :cond_9d

    const-string v0, "CREATE TABLE emoji_groups(type INTEGER PRIMARY KEY, data BLOB)"

    .line 1226
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "PRAGMA user_version = 112"

    .line 1227
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x70

    :cond_9d
    return v0
.end method

.method public static recoverDatabase(Ljava/io/File;Ljava/io/File;Ljava/io/File;I)Z
    .locals 18

    .line 1236
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 1237
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recover_database_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1240
    new-instance v2, Ljava/io/File;

    const-string v0, "cache4.db"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1241
    new-instance v3, Ljava/io/File;

    const-string v0, "cache4.db-wal"

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1242
    new-instance v4, Ljava/io/File;

    const-string v0, "cache4.db-shm"

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1244
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1245
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1246
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-wide/16 v5, 0x0

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "start recover database"

    .line 1256
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1259
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1261
    new-instance v9, Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    const-string v10, "PRAGMA secure_delete = ON"

    .line 1262
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v10, "PRAGMA temp_store = MEMORY"

    .line 1263
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v10, "PRAGMA journal_mode = WAL"

    .line 1264
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v10, "PRAGMA journal_size_limit = 10485760"

    .line 1265
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1267
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->createTables(Lorg/telegram/SQLite/SQLiteDatabase;)V

    .line 1268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ATTACH DATABASE \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" AS old;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v10, "PRAGMA old.user_version"

    new-array v11, v8, [Ljava/lang/Object;

    .line 1270
    invoke-virtual {v9, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x70

    if-eq v10, v11, :cond_0

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t restore database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v8

    .line 1275
    :cond_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const-string v11, "messages_v2"

    .line 1276
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "messages_holes"

    .line 1277
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "scheduled_messages_v2"

    .line 1278
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_holes_v2"

    .line 1279
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_v4"

    .line 1280
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "messages_holes_topics"

    .line 1281
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "messages_topics"

    .line 1282
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_topics"

    .line 1283
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_holes_topics"

    .line 1284
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "topics"

    .line 1285
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_counts_v2"

    .line 1286
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "media_counts_topics"

    .line 1287
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "dialogs"

    .line 1288
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "dialog_filter"

    .line 1289
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "dialog_filter_ep"

    .line 1290
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "dialog_filter_pin_v2"

    .line 1291
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 1294
    :goto_1
    sget-object v12, Lorg/telegram/messenger/MessagesStorage;->DATABASE_TABLES:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_2

    .line 1295
    aget-object v12, v12, v11

    .line 1296
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    .line 1299
    :cond_1
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "INSERT OR IGNORE INTO %s SELECT * FROM old.%s;"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v8

    aput-object v12, v15, v7

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const-string v10, "SELECT did FROM old.dialogs"

    new-array v11, v8, [Ljava/lang/Object;

    .line 1302
    invoke-virtual {v9, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 1304
    :goto_3
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1305
    invoke-virtual {v10, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 1306
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1307
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1309
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1312
    :cond_4
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const/4 v10, 0x0

    .line 1315
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 1316
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1317
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "INSERT OR IGNORE INTO messages_v2 SELECT * FROM old.messages_v2 WHERE uid = %d;"

    new-array v15, v7, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v14, "INSERT OR IGNORE INTO messages_holes SELECT * FROM old.messages_holes WHERE uid = %d;"

    new-array v15, v7, [Ljava/lang/Object;

    .line 1318
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v14, "INSERT OR IGNORE INTO media_holes_v2 SELECT * FROM old.media_holes_v2 WHERE uid = %d;"

    new-array v15, v7, [Ljava/lang/Object;

    .line 1319
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v14, "INSERT OR IGNORE INTO media_v4 SELECT * FROM old.media_v4 WHERE uid = %d;"

    new-array v15, v7, [Ljava/lang/Object;

    .line 1320
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v15, v8

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const-string v0, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    .line 1323
    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const-string v10, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    .line 1324
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v16

    const/4 v15, 0x0

    .line 1326
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v15, v10, :cond_7

    .line 1327
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1329
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT last_mid_i, last_mid FROM old.dialogs WHERE did = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v14

    .line 1331
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1332
    invoke-virtual {v14, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    move-object/from16 v17, v9

    .line 1333
    invoke-virtual {v14, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 1334
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT OR IGNORE INTO messages_v2 SELECT * FROM old.messages_v2 WHERE uid = "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " AND mid IN ("

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v13, v17

    invoke-virtual {v13, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1336
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v7, v8

    const/4 v8, 0x0

    move-object v12, v0

    move-object v9, v13

    move-object/from16 v13, v16

    move-object/from16 v17, v14

    move v14, v7

    move v7, v15

    move v15, v8

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;II)V

    goto :goto_6

    :cond_6
    move-object/from16 v17, v14

    move v7, v15

    .line 1339
    :goto_6
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v15, v7, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1343
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1344
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v0, "DETACH DATABASE old;"

    .line 1346
    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1347
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 1349
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 1356
    :cond_8
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 1357
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 1358
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-object/from16 v1, p0

    .line 1360
    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-object/from16 v1, p1

    .line 1361
    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-object/from16 v1, p2

    .line 1362
    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1364
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1366
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database recovered time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :catch_2
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method
