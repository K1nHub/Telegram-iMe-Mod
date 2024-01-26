.class Lorg/telegram/messenger/MediaDataController$1;
.super Ljava/lang/Object;
.source "MediaDataController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaDataController;->loadMediaDatabase(JIIIIJIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaDataController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$fromCache:I

.field final synthetic val$isChannel:Z

.field final synthetic val$max_id:I

.field final synthetic val$min_id:I

.field final synthetic val$requestIndex:I

.field final synthetic val$topicId:J

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method public static synthetic $r8$lambda$m8Ngww_l1l-IJ_msDedohaCSfrI(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaDataController$1;->lambda$run$0(Ljava/lang/Runnable;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaDataController;IJIJIIIIZI)V
    .locals 0

    .line 4197
    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iput-wide p3, p0, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iput-wide p6, p0, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iput p9, p0, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iput p10, p0, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iput p11, p0, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iput-boolean p12, p0, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iput p13, p0, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;I)V
    .locals 1

    .line 4401
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->completeTaskForGuid(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 4201
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 4203
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4205
    iget v5, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 4208
    iget-object v7, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v7}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    .line 4212
    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    const-wide/16 v10, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-nez v8, :cond_18

    .line 4213
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v8, :cond_6

    move-object/from16 v17, v7

    .line 4214
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 4215
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start IN (0, 1)"

    new-array v8, v13, [Ljava/lang/Object;

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v15

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v8, v13

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v14

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    move-object/from16 v13, v17

    invoke-virtual {v13, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v13, v17

    .line 4217
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)"

    new-array v8, v14, [Ljava/lang/Object;

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v15

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    move-object v9, v8

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4219
    :goto_0
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4220
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 4222
    :cond_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4223
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-eqz v6, :cond_2

    .line 4224
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM media_topics WHERE uid = %d AND topic_id = %d AND type = %d AND mid > 0"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v15

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v8, 0x1

    aput-object v9, v10, v8

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v14

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_1

    .line 4226
    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM media_v4 WHERE uid = %d AND type = %d AND mid > 0"

    new-array v9, v14, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4228
    :goto_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4229
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 4232
    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    const-string v9, "REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)"

    .line 4233
    invoke-virtual {v13, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    goto :goto_2

    :cond_3
    const-string v9, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    .line 4235
    invoke-virtual {v13, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 4238
    :goto_2
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4239
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    const/4 v8, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4240
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v12, v10, v19

    if-eqz v12, :cond_4

    .line 4241
    invoke-virtual {v9, v14, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v10, 0x3

    goto :goto_3

    :cond_4
    move v10, v14

    :goto_3
    add-int/lit8 v11, v10, 0x1

    .line 4243
    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-virtual {v9, v10, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    add-int/lit8 v10, v11, 0x1

    .line 4244
    invoke-virtual {v9, v11, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4245
    invoke-virtual {v9, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4246
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4247
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    move v7, v15

    .line 4251
    :goto_4
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    :cond_6
    move-object v13, v7

    move v7, v15

    .line 4255
    :goto_5
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_c

    .line 4257
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v6, v10, v19

    if-eqz v6, :cond_7

    .line 4258
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Object;

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v12, v15

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v12, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v14

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x3

    aput-object v9, v12, v18

    invoke-static {v6, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_6

    .line 4260
    :cond_7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    move-object/from16 v18, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v12, v15

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v12, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v14

    move-object/from16 v9, v18

    invoke-static {v6, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4262
    :goto_6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4263
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    const/4 v8, 0x1

    .line 4264
    invoke-virtual {v6, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    goto :goto_7

    :cond_8
    move v9, v15

    .line 4266
    :goto_7
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4268
    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v10, v11, v19

    if-eqz v10, :cond_a

    const/4 v8, 0x1

    if-le v9, v8, :cond_9

    .line 4270
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v15

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v6, v8

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v6, v11

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x4

    aput-object v9, v6, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x5

    aput-object v5, v6, v9

    invoke-static {v7, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_8

    .line 4273
    :cond_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x4

    aput-object v5, v10, v11

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    :cond_a
    const/4 v6, 0x1

    if-le v9, v6, :cond_b

    .line 4277
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v14

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v10, v9

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_8
    move v7, v15

    goto/16 :goto_f

    .line 4280
    :cond_b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    .line 4283
    :cond_c
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_12

    .line 4285
    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v6, v9, v19

    if-eqz v6, :cond_d

    .line 4286
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Object;

    move-object/from16 v18, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v12, v15

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v12, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v14

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v12, v10

    move-object/from16 v9, v18

    invoke-static {v6, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_9

    .line 4288
    :cond_d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    move-object/from16 v18, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v12, v15

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v12, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v14

    move-object/from16 v9, v18

    invoke-static {v6, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4290
    :goto_9
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 4291
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    const/4 v8, 0x1

    .line 4292
    invoke-virtual {v6, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    goto :goto_a

    :cond_e
    move v9, v15

    .line 4294
    :goto_a
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4296
    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v10, v11, v19

    if-eqz v10, :cond_10

    const/4 v8, 0x1

    if-le v9, v8, :cond_f

    .line 4298
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    move v12, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v15

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v6, v12

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x4

    aput-object v9, v6, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x5

    aput-object v5, v6, v9

    invoke-static {v10, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_c

    .line 4301
    :cond_f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_b

    :cond_10
    move v12, v9

    const/4 v6, 0x1

    if-le v12, v6, :cond_11

    .line 4305
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    move-object v11, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v15

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v10, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v14

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v10, v9

    invoke-static {v6, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_c

    .line 4308
    :cond_11
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_b
    const/4 v7, 0x1

    :goto_c
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 4312
    :cond_12
    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-eqz v6, :cond_13

    .line 4313
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT max(end) FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    move-object v10, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v15

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v11, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v14

    invoke-static {v6, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_d

    .line 4315
    :cond_13
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d"

    new-array v10, v14, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4317
    :goto_d
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 4318
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    goto :goto_e

    :cond_14
    move v9, v15

    .line 4320
    :goto_e
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4321
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v19, 0x0

    cmp-long v6, v10, v19

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    if-le v9, v6, :cond_15

    .line 4323
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    move v12, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v15

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v11, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v14

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v11, v9

    invoke-static {v6, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    .line 4325
    :cond_15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_f

    :cond_16
    move v12, v9

    const/4 v6, 0x1

    if-le v12, v6, :cond_17

    .line 4329
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v11, v9

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v10, v9

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v10, v9

    invoke-static {v6, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_f

    .line 4331
    :cond_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v15

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v8, 0x1

    aput-object v11, v10, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v14

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_f
    move v6, v15

    :goto_10
    move/from16 v18, v7

    goto/16 :goto_12

    :cond_18
    move-object v13, v7

    .line 4337
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-eqz v6, :cond_1b

    .line 4338
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_19

    .line 4339
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4340
    :cond_19
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_1a

    .line 4341
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4343
    :cond_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4346
    :cond_1b
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_1c

    .line 4347
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_11

    .line 4348
    :cond_1c
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_1d

    .line 4349
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_11

    .line 4351
    :cond_1d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v14

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_11
    move v6, v15

    const/16 v18, 0x1

    .line 4357
    :cond_1e
    :goto_12
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 4358
    invoke-virtual {v5, v15}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 4360
    invoke-virtual {v7, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v9

    invoke-static {v7, v9, v15}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v9

    .line 4361
    iget-object v10, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v10}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    iget-wide v10, v10, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v9, v7, v10, v11}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;J)V

    .line 4362
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v7, 0x1

    .line 4363
    invoke-virtual {v5, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4364
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4365
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 4366
    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_1f
    if-eqz v6, :cond_20

    .line 4369
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_13

    .line 4371
    :cond_20
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    const/4 v7, 0x0

    .line 4374
    invoke-static {v9, v2, v4, v7}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_12

    .line 4377
    :cond_21
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4379
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ","

    if-nez v5, :cond_22

    .line 4380
    :try_start_1
    iget-object v5, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v5}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v7}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4382
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 4383
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4385
    :cond_23
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    if-le v2, v4, :cond_24

    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v2, :cond_24

    .line 4386
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v15, 0x0

    goto :goto_14

    .line 4388
    :cond_24
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_25

    goto :goto_14

    :cond_25
    move/from16 v15, v18

    .line 4401
    :goto_14
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4402
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    move/from16 v16, v15

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    move/from16 v17, v15

    move/from16 v15, v16

    move/from16 v16, v17

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4395
    :try_start_2
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4396
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4397
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4398
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4401
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4402
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_15
    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/MediaDataController;->access$000(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIJIIZZI)V

    return-void

    .line 4401
    :goto_16
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4402
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    const/16 v16, 0x0

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/MediaDataController;->access$000(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIJIIZZI)V

    .line 4403
    throw v17
.end method
