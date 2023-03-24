.class public Lorg/telegram/messenger/AutoDeleteMediaTask;
.super Ljava/lang/Object;
.source "AutoDeleteMediaTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;
    }
.end annotation


# static fields
.field public static usingFilePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$233ZTHa-njL8EDDfAfRjGorQTD4(ILjava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lambda$run$1(ILjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CMSe2YlWVUvZtdgAaQksGkSRKzc(Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lambda$run$0(Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillFilesRecursive(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 209
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-static {v2, p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->fillFilesRecursive(Ljava/io/File;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 216
    :cond_3
    sget-object v3, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 219
    :cond_4
    new-instance v3, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;-><init>(Ljava/io/File;Lorg/telegram/messenger/AutoDeleteMediaTask$1;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static synthetic lambda$run$0(Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;)I
    .locals 3

    .line 148
    iget-wide v0, p1, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;->lastUsageDate:J

    iget-wide p0, p0, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;->lastUsageDate:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$run$1(ILjava/io/File;)V
    .locals 26

    move/from16 v1, p0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "checkKeepMedia start task"

    .line 26
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 29
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_2

    .line 31
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getCacheByChatsController()Lorg/telegram/messenger/CacheByChatsController;

    move-result-object v7

    .line 33
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v7}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaExceptionsByDialogs()Landroid/util/LongSparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    new-array v7, v0, [I

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide v13, 0x7fffffffffffffffL

    :goto_1
    if-ge v11, v0, :cond_5

    .line 44
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keep_media_type_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lorg/telegram/messenger/CacheByChatsController;->getDefault(I)I

    move-result v5

    invoke-interface {v15, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aput v0, v7, v11

    .line 45
    aget v0, v7, v11

    sget v5, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_FOREVER:I

    if-eq v0, v5, :cond_3

    const/4 v12, 0x0

    .line 48
    :cond_3
    aget v0, v7, v11

    invoke-static {v0}, Lorg/telegram/messenger/CacheByChatsController;->getDaysInSeconds(I)J

    move-result-wide v16

    cmp-long v0, v16, v13

    if-gez v0, :cond_4

    move-wide/from16 v13, v16

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    const/4 v12, 0x0

    :cond_6
    if-nez v12, :cond_15

    .line 65
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Landroid/util/SparseArray;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 66
    :goto_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_16

    .line 68
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 71
    :goto_3
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    const/4 v8, 0x0

    .line 76
    :goto_4
    array-length v9, v0

    if-ge v8, v9, :cond_a

    .line 77
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    aget-object v10, v0, v8

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    .line 80
    :cond_8
    new-instance v9, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    aget-object v10, v0, v8

    invoke-direct {v9, v10}, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 83
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_b

    .line 84
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/CacheByChatsController;

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/CacheByChatsController;->lookupFiles(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    .line 86
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_14

    .line 87
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    .line 88
    iget v9, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->keepMedia:I

    sget v10, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_FOREVER:I

    if-ne v9, v10, :cond_c

    :goto_8
    move/from16 v22, v5

    move-object/from16 v25, v6

    const-wide v20, 0x7fffffffffffffffL

    goto/16 :goto_c

    :cond_c
    if-ltz v9, :cond_d

    .line 93
    invoke-static {v9}, Lorg/telegram/messenger/CacheByChatsController;->getDaysInSeconds(I)J

    move-result-wide v9

    :goto_9
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_a

    .line 94
    :cond_d
    iget v9, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->dialogType:I

    if-ltz v9, :cond_e

    .line 95
    aget v9, v7, v9

    invoke-static {v9}, Lorg/telegram/messenger/CacheByChatsController;->getDaysInSeconds(I)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_9

    :cond_e
    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    move-wide v9, v13

    goto :goto_9

    :goto_a
    cmp-long v22, v9, v20

    if-nez v22, :cond_10

    move/from16 v22, v5

    move-object/from16 v25, v6

    goto :goto_c

    :cond_10
    move/from16 v22, v5

    .line 104
    :try_start_1
    iget-object v5, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->getLastUsageFileTime(Ljava/lang/String;)J

    move-result-wide v23

    move-object/from16 v25, v6

    int-to-long v5, v1

    sub-long/2addr v5, v9

    cmp-long v5, v23, v5

    if-gez v5, :cond_11

    .line 106
    sget-object v5, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    iget-object v6, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_13

    .line 109
    :try_start_2
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_12

    add-int/lit8 v15, v15, 0x1

    .line 111
    iget-object v5, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v16, v16, v5

    .line 113
    :cond_12
    iget-object v0, v0, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 115
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v22

    move-object/from16 v6, v25

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_14
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_e

    :catchall_1
    move-exception v0

    const-wide v20, 0x7fffffffffffffffL

    .line 120
    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_15
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 125
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "cache_limit"

    const v6, 0x7fffffff

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_1f

    const/4 v5, 0x1

    if-ne v0, v5, :cond_17

    const-wide/32 v5, 0x12c00000

    goto :goto_f

    :cond_17
    int-to-long v5, v0

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 133
    :goto_f
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 135
    :goto_10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_18

    .line 136
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide v13

    add-long/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_18
    cmp-long v7, v8, v5

    if-lez v7, :cond_1f

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 140
    :goto_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v12, v10, :cond_19

    .line 141
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 142
    invoke-static {v10, v7}, Lorg/telegram/messenger/AutoDeleteMediaTask;->fillFilesRecursive(Ljava/io/File;Ljava/util/ArrayList;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_19
    const/4 v12, 0x0

    .line 144
    :goto_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_1a

    .line 145
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/CacheByChatsController;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/CacheByChatsController;->lookupFiles(Ljava/util/ArrayList;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 147
    :cond_1a
    sget-object v0, Lorg/telegram/messenger/AutoDeleteMediaTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/AutoDeleteMediaTask$$ExternalSyntheticLambda1;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 156
    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1e

    .line 157
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;

    iget v13, v13, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->keepMedia:I

    sget v14, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_FOREVER:I

    if-ne v13, v14, :cond_1b

    const-wide/16 v18, 0x0

    goto :goto_14

    .line 160
    :cond_1b
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;

    iget-wide v13, v13, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;->lastUsageDate:J

    const-wide/16 v18, 0x0

    cmp-long v13, v13, v18

    if-gtz v13, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 164
    :cond_1c
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;

    iget-object v13, v13, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    sub-long/2addr v8, v13

    add-int/lit8 v4, v4, 0x1

    add-long/2addr v10, v13

    .line 170
    :try_start_4
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/AutoDeleteMediaTask$FileInfoInternal;

    iget-object v13, v13, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    cmp-long v13, v8, v5

    if-gez v13, :cond_1d

    goto :goto_15

    :cond_1d
    :goto_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_1e
    :goto_15
    move v12, v0

    move-wide v5, v10

    goto :goto_16

    :cond_1f
    const-wide/16 v18, 0x0

    move-wide/from16 v5, v18

    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 182
    :goto_16
    new-instance v0, Ljava/io/File;

    const-string v7, "acache"

    move-object/from16 v8, p1

    invoke-direct {v0, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_20

    const v7, 0x15180

    sub-int/2addr v1, v7

    int-to-long v7, v1

    .line 186
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v7, v8, v1}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_17

    :catchall_2
    move-exception v0

    .line 188
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 191
    :cond_20
    :goto_17
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    const-string v7, "lastKeepMediaCheckTime"

    .line 192
    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_21

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkKeepMedia task end time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " auto deleted info: files "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   deleted by size limit info: files "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unknownTimeFiles "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public static lockFile(Ljava/io/File;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/lang/String;)V

    return-void
.end method

.method public static lockFile(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 251
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static run()V
    .locals 4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 17
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x15180

    if-ge v1, v2, :cond_0

    return-void

    .line 20
    :cond_0
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    const/4 v1, 0x4

    .line 21
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 23
    sget-object v2, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/AutoDeleteMediaTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/AutoDeleteMediaTask$$ExternalSyntheticLambda0;-><init>(ILjava/io/File;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unlockFile(Ljava/io/File;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/lang/String;)V

    return-void
.end method

.method public static unlockFile(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 258
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AutoDeleteMediaTask;->usingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
