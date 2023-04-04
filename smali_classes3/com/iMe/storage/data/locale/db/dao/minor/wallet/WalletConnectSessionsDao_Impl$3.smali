.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "WalletConnectSessionsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 133
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)V
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

    .line 141
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getTgUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 142
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 147
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 148
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 152
    :goto_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionBridge()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 153
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 155
    :cond_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionBridge()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 157
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 158
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 162
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getChainId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 163
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getPeerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 164
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 166
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 168
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 169
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 173
    :goto_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 174
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 176
    :cond_6
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 178
    :goto_6
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 179
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 181
    :cond_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 183
    :goto_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 184
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 186
    :cond_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 188
    :goto_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaIcons()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_9

    .line 190
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 192
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 194
    :goto_9
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 195
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 196
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_a

    .line 198
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 200
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_a
    const/16 v0, 0xf

    .line 202
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getTgUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 203
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_b

    .line 204
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 206
    :cond_b
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
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

    .line 133
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `WalletConnectSessionDb` SET `tgUserId` = ?,`sessionTopic` = ?,`sessionVersion` = ?,`sessionBridge` = ?,`sessionKey` = ?,`chainId` = ?,`peerId` = ?,`remotePeerId` = ?,`remotePeerMetaName` = ?,`remotePeerMetaUrl` = ?,`remotePeerMetaDescription` = ?,`remotePeerMetaIcons` = ?,`isAutoSign` = ?,`date` = ? WHERE `tgUserId` = ? AND `sessionKey` = ?"

    return-object v0
.end method
