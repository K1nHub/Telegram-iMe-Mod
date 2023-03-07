.class Lcom/smedialink/bots/data/database/BotsDao_Impl$4;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "BotsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/BotsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/database/BotsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/BotsDbModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 313
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 314
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 318
    :goto_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 319
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 323
    :goto_1
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getLang()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/domain/model/BotLanguage;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 325
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 327
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 329
    :goto_2
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 330
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 332
    :cond_3
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 334
    :goto_3
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 335
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 337
    :cond_4
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 339
    :goto_4
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitleLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 341
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 343
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 345
    :goto_5
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescriptionLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 347
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 349
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 351
    :goto_6
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 352
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 354
    :cond_7
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 356
    :goto_7
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 357
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 359
    :cond_8
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0xa

    .line 361
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstalls()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 362
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPriority()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 363
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getReviews()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 364
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getRating()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/16 v0, 0xe

    .line 365
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 366
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstallLogged()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 367
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUseAssets()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 368
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 369
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_9

    .line 371
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 373
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 375
    :goto_9
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_a

    .line 376
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 378
    :cond_a
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 380
    :goto_a
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_b

    .line 381
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 383
    :cond_b
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    const/16 v0, 0x15

    .line 385
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPhrases()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 386
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getThemes()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 387
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_c

    .line 389
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 391
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 393
    :goto_c
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    if-nez v0, :cond_d

    .line 395
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 397
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 399
    :goto_d
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    if-nez v0, :cond_e

    .line 400
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 402
    :cond_e
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 404
    :goto_e
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getType()Lcom/smedialink/bots/data/model/BotType;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/data/model/BotType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    if-nez v0, :cond_f

    .line 406
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 408
    :cond_f
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 410
    :goto_f
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/data/model/BotStatus;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    if-nez v0, :cond_10

    .line 412
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 414
    :cond_10
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 416
    :goto_10
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    if-nez v0, :cond_11

    .line 417
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    .line 419
    :cond_11
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_11
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 305
    check-cast p2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/BotsDao_Impl$4;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `BotsDbModel` SET `id` = ?,`sku` = ?,`lang` = ?,`avatarOriginal` = ?,`avatarRounded` = ?,`titleLocales` = ?,`descriptionLocales` = ?,`title` = ?,`description` = ?,`installs` = ?,`priority` = ?,`reviews` = ?,`rating` = ?,`ownRating` = ?,`installLogged` = ?,`useAssets` = ?,`botUpdated` = ?,`tags` = ?,`file` = ?,`hash` = ?,`phrases` = ?,`themes` = ?,`created` = ?,`updated` = ?,`price` = ?,`type` = ?,`status` = ? WHERE `id` = ?"

    return-object v0
.end method
