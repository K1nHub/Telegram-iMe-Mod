.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "WalletTokensBalancesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 136
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V
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

    .line 144
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 145
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotal()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 146
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatValue()D

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 147
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatSymbol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 148
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 152
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatTicker()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 153
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x6

    .line 157
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 158
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatSymbol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 159
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 163
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatTicker()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 164
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 166
    :cond_3
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 v0, 0x9

    .line 168
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRatePercentageChange24h()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 169
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_4

    .line 170
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 172
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 174
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 175
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 177
    :cond_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 179
    :goto_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 180
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 182
    :cond_6
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xd

    .line 184
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getDecimals()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 185
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_7

    .line 186
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 188
    :cond_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 190
    :goto_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin()Z

    move-result v0

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 191
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 192
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_8

    .line 193
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 195
    :cond_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 197
    :goto_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getWebsite()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_9

    .line 198
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 200
    :cond_9
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
    const/16 v0, 0x12

    .line 202
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 203
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_a

    .line 204
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 206
    :cond_a
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 208
    :goto_a
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_b

    .line 209
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 211
    :cond_b
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

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

    .line 136
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `WalletTokenBalanceDb` SET `tgUserId` = ?,`total` = ?,`totalInFiatValue` = ?,`totalInFiatSymbol` = ?,`totalInFiatTicker` = ?,`rateToFiatValue` = ?,`rateToFiatSymbol` = ?,`rateToFiatTicker` = ?,`ratePercentageChange24h` = ?,`address` = ?,`networkId` = ?,`avatarUrl` = ?,`decimals` = ?,`ticker` = ?,`isCoin` = ?,`name` = ?,`website` = ? WHERE `tgUserId` = ? AND `ticker` = ? AND `networkId` = ?"

    return-object v0
.end method
