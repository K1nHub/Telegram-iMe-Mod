.class Lcom/smedialink/bots/data/database/BotsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 64
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 72
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 78
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_1
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getLang()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/domain/model/BotLanguage;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 86
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 88
    :goto_2
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 93
    :goto_3
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 94
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 98
    :goto_4
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitleLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 102
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_5
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescriptionLocales()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 106
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 108
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 110
    :goto_6
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 111
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 113
    :cond_7
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 115
    :goto_7
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 116
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 118
    :cond_8
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0xa

    .line 120
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstalls()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 121
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPriority()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 122
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getReviews()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 123
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getRating()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/16 v0, 0xe

    .line 124
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 125
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getInstallLogged()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 126
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUseAssets()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 127
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getBotUpdated()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_9

    .line 130
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 132
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 134
    :goto_9
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_a

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 139
    :goto_a
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_b

    .line 140
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 142
    :cond_b
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    const/16 v0, 0x15

    .line 144
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPhrases()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 145
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getThemes()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_c

    .line 148
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 150
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 152
    :goto_c
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    if-nez v0, :cond_d

    .line 154
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 156
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 158
    :goto_d
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    if-nez v0, :cond_e

    .line 159
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 161
    :cond_e
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 163
    :goto_e
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getType()Lcom/smedialink/bots/data/model/BotType;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/data/model/BotType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    if-nez v0, :cond_f

    .line 165
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 167
    :cond_f
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 169
    :goto_f
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/bots/data/database/converter/Converter;->toString(Lcom/smedialink/bots/data/model/BotStatus;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1b

    if-nez p2, :cond_10

    .line 171
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 173
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

    .line 64
    check-cast p2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/BotsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `BotsDbModel` (`id`,`sku`,`lang`,`avatarOriginal`,`avatarRounded`,`titleLocales`,`descriptionLocales`,`title`,`description`,`installs`,`priority`,`reviews`,`rating`,`ownRating`,`installLogged`,`useAssets`,`botUpdated`,`tags`,`file`,`hash`,`phrases`,`themes`,`created`,`updated`,`price`,`type`,`status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
