.class Lcom/iMe/bots/data/database/BotsDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "BotsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/database/BotsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/iMe/bots/data/model/database/BotsDbModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/bots/data/database/BotsDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 177
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/bots/data/model/database/BotsDbModel;)V
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

    .line 185
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 190
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 191
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 195
    :goto_1
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getLang()Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toString(Lcom/iMe/bots/domain/model/BotLanguage;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 197
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 199
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 201
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 202
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 204
    :cond_3
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 206
    :goto_3
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 207
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 209
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 211
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitleLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 213
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 215
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 217
    :goto_5
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescriptionLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 219
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 221
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 223
    :goto_6
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 224
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 226
    :cond_7
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 228
    :goto_7
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 229
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 231
    :cond_8
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0xa

    .line 233
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getInstalls()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 234
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPriority()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 235
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getReviews()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 236
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getRating()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/16 v0, 0xe

    .line 237
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 238
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getInstallLogged()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 239
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getUseAssets()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 240
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 241
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_9

    .line 243
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 245
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 247
    :goto_9
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_a

    .line 248
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 250
    :cond_a
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 252
    :goto_a
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_b

    .line 253
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 255
    :cond_b
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    const/16 v0, 0x15

    .line 257
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPhrases()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 258
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getThemes()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 259
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_c

    .line 261
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 263
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 265
    :goto_c
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    if-nez v0, :cond_d

    .line 267
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 269
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 271
    :goto_d
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    if-nez v0, :cond_e

    .line 272
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 274
    :cond_e
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 276
    :goto_e
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getType()Lcom/iMe/bots/data/model/BotType;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toString(Lcom/iMe/bots/data/model/BotType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    if-nez v0, :cond_f

    .line 278
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 280
    :cond_f
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 282
    :goto_f
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object p2

    invoke-static {p2}, Lcom/iMe/bots/data/database/converter/Converter;->toString(Lcom/iMe/bots/data/model/BotStatus;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1b

    if-nez p2, :cond_10

    .line 284
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 286
    :cond_10
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_10
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

    .line 177
    check-cast p2, Lcom/iMe/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/database/BotsDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/bots/data/model/database/BotsDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `BotsDbModel` (`id`,`sku`,`lang`,`avatarOriginal`,`avatarRounded`,`titleLocales`,`descriptionLocales`,`title`,`description`,`installs`,`priority`,`reviews`,`rating`,`ownRating`,`installLogged`,`useAssets`,`botUpdated`,`tags`,`file`,`hash`,`phrases`,`themes`,`created`,`updated`,`price`,`type`,`status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
