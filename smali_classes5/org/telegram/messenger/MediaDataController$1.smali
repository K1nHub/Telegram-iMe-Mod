.class Lorg/telegram/messenger/MediaDataController$1;
.super Ljava/lang/Object;
.source "MediaDataController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaDataController;->loadMediaDatabase(JIIIIIIZII)V
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

.field final synthetic val$topicId:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method public static synthetic $r8$lambda$m8Ngww_l1l-IJ_msDedohaCSfrI(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaDataController$1;->lambda$run$0(Ljava/lang/Runnable;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaDataController;IJIIIIIIZI)V
    .locals 0

    .line 4025
    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iput-wide p3, p0, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    iput p7, p0, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iput p9, p0, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iput p10, p0, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iput-boolean p11, p0, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iput p12, p0, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;I)V
    .locals 1

    .line 4229
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->completeTaskForGuid(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 4029
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 4031
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4032
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4033
    iget v5, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 4036
    iget-object v7, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v7}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    .line 4040
    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-nez v8, :cond_18

    .line 4041
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v8, :cond_6

    .line 4042
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v8, :cond_0

    .line 4043
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT start FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start IN (0, 1)"

    new-array v14, v11, [Ljava/lang/Object;

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v13

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v6

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v12

    invoke-static {v8, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    goto :goto_0

    .line 4045
    :cond_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)"

    new-array v10, v12, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 4047
    :goto_0
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4048
    invoke-virtual {v8, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    if-ne v9, v6, :cond_5

    const/4 v9, 0x1

    goto/16 :goto_4

    .line 4050
    :cond_1
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4051
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v8, :cond_2

    .line 4052
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT min(mid) FROM media_topics WHERE uid = %d AND topic_id = %d AND type = %d AND mid > 0"

    new-array v10, v11, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v6

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v12

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    goto :goto_1

    .line 4054
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT min(mid) FROM media_v4 WHERE uid = %d AND type = %d AND mid > 0"

    new-array v10, v12, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 4056
    :goto_1
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4057
    invoke-virtual {v8, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    if-eqz v9, :cond_5

    .line 4060
    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v10, :cond_3

    const-string v10, "REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)"

    .line 4061
    invoke-virtual {v7, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    goto :goto_2

    :cond_3
    const-string v10, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    .line 4063
    invoke-virtual {v7, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 4066
    :goto_2
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4067
    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-virtual {v10, v6, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4068
    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v14, :cond_4

    .line 4069
    invoke-virtual {v10, v12, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x3

    goto :goto_3

    :cond_4
    const/4 v14, 0x2

    :goto_3
    add-int/lit8 v15, v14, 0x1

    .line 4071
    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-virtual {v10, v14, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    add-int/lit8 v11, v15, 0x1

    .line 4072
    invoke-virtual {v10, v15, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4073
    invoke-virtual {v10, v11, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4074
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4075
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    const/4 v9, 0x0

    .line 4079
    :goto_4
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    .line 4083
    :goto_5
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v8, :cond_c

    .line 4085
    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v8, :cond_7

    .line 4086
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Object;

    move-object/from16 v18, v11

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v6

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v12

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v15, v11

    move-object/from16 v10, v18

    invoke-static {v8, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    move-object v6, v8

    move-object v8, v7

    goto :goto_6

    .line 4088
    :cond_7
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    move-object/from16 v18, v7

    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v13

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v15, v7

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v12

    invoke-static {v8, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    move-object/from16 v8, v18

    invoke-virtual {v8, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4090
    :goto_6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4091
    invoke-virtual {v6, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    const/4 v7, 0x1

    .line 4092
    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    .line 4094
    :goto_7
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4096
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    if-le v10, v6, :cond_9

    .line 4098
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v9, v11

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x3

    aput-object v10, v9, v14

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x4

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_8

    .line 4101
    :cond_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v10, v11

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v12

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v10, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x4

    aput-object v5, v10, v14

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    :cond_a
    const/4 v6, 0x1

    if-le v10, v6, :cond_b

    .line 4105
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v9, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x3

    aput-object v10, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_8
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 4108
    :cond_b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v10, v11

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x3

    aput-object v5, v10, v14

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    :cond_c
    move-object v8, v7

    .line 4111
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_12

    .line 4113
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_d

    .line 4114
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    const/4 v10, 0x4

    new-array v15, v10, [Ljava/lang/Object;

    iget-wide v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v15, v13

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v15, v12

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v15, v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x3

    aput-object v12, v15, v17

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_9

    .line 4116
    :cond_d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v15, v11

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v15, v12

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4118
    :goto_9
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4119
    invoke-virtual {v6, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v11, 0x1

    .line 4120
    invoke-virtual {v6, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    .line 4122
    :goto_a
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4124
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    if-le v7, v6, :cond_f

    .line 4126
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v14, v11

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v14, v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v14, v15

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x4

    aput-object v7, v14, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v14, v7

    invoke-static {v6, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_c

    .line 4129
    :cond_f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x4

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_b

    :cond_10
    const/4 v6, 0x1

    if-le v7, v6, :cond_11

    .line 4133
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v14, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v14, v10

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v14, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v14, v7

    invoke-static {v6, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_c

    .line 4136
    :cond_11
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_b
    const/4 v9, 0x1

    :goto_c
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 4140
    :cond_12
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_13

    .line 4141
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(end) FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d"

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v14, v11

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v14, v12

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_d

    .line 4143
    :cond_13
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v12, v11

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4145
    :goto_d
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 4146
    invoke-virtual {v6, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    .line 4148
    :goto_e
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4149
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    if-le v7, v6, :cond_15

    .line 4151
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v13

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v14, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v14, v10

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v14, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v14, v7

    invoke-static {v6, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_f

    .line 4153
    :cond_15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v12, v11

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v10, 0x2

    aput-object v14, v12, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x3

    aput-object v5, v12, v14

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_f

    :cond_16
    const/4 v6, 0x1

    if-le v7, v6, :cond_17

    .line 4157
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v14, v10

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v14, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v14, v7

    invoke-static {v6, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_f

    .line 4159
    :cond_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x1

    aput-object v14, v12, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v12, v10

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_f
    const/4 v6, 0x0

    :goto_10
    move v7, v9

    goto/16 :goto_12

    :cond_18
    move-object v8, v7

    .line 4165
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    if-eqz v6, :cond_1b

    .line 4166
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_19

    .line 4167
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x4

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4168
    :cond_19
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_1a

    .line 4169
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v9, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x4

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4171
    :cond_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto/16 :goto_11

    .line 4174
    :cond_1b
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_1c

    .line 4175
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_11

    .line 4176
    :cond_1c
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_1d

    .line 4177
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x2

    aput-object v12, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v9, v12

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    goto :goto_11

    .line 4179
    :cond_1d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v13

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v11, 0x1

    aput-object v12, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    :goto_11
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4185
    :goto_12
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 4186
    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 4188
    invoke-virtual {v8, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v9

    invoke-static {v8, v9, v13}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v9

    .line 4189
    iget-object v12, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v12}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    iget-wide v14, v12, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v9, v8, v14, v15}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;J)V

    .line 4190
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v8, 0x1

    .line 4191
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4192
    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4193
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x2

    .line 4194
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    iput-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    goto :goto_13

    :cond_1e
    const/4 v8, 0x2

    :goto_13
    if-eqz v6, :cond_1f

    .line 4197
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v13, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_14

    .line 4199
    :cond_1f
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    const/4 v10, 0x0

    .line 4202
    invoke-static {v9, v2, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_12

    :cond_20
    const/4 v8, 0x2

    goto :goto_12

    .line 4205
    :cond_21
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4207
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ","

    if-nez v5, :cond_22

    .line 4208
    :try_start_1
    iget-object v5, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v5}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v8}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4210
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 4211
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4213
    :cond_23
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    if-le v2, v4, :cond_24

    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v2, :cond_24

    .line 4214
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_15

    .line 4216
    :cond_24
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_25

    :goto_15
    const/4 v14, 0x0

    goto :goto_16

    :cond_25
    move v14, v7

    .line 4229
    :goto_16
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4230
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object/from16 v16, v0

    goto :goto_18

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4223
    :try_start_2
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4224
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4225
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4226
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4229
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4230
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    const/4 v14, 0x0

    :goto_17
    invoke-static/range {v2 .. v15}, Lorg/telegram/messenger/MediaDataController;->access$000(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIIIIZZI)V

    return-void

    .line 4229
    :goto_18
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v4, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4230
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v4, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:I

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    const/4 v14, 0x0

    invoke-static/range {v2 .. v15}, Lorg/telegram/messenger/MediaDataController;->access$000(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIIIIZZI)V

    .line 4231
    throw v16
.end method
