.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 47
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 55
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 56
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotal()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 57
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatValue()D

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 58
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatSymbol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 59
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 63
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatTicker()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x6

    .line 68
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 69
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatSymbol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 70
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatTicker()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 75
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 v0, 0x9

    .line 79
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRatePercentageChange24h()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 80
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_4

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 85
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 88
    :cond_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 90
    :goto_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 93
    :cond_6
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xd

    .line 95
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getDecimals()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_7

    .line 97
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 99
    :cond_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 101
    :goto_7
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin()Z

    move-result v0

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 102
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 103
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_8

    .line 104
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 106
    :cond_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_8
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getWebsite()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_9

    .line 109
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 111
    :cond_9
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getWebsite()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
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

    .line 47
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WalletTokenBalanceDb` (`tgUserId`,`total`,`totalInFiatValue`,`totalInFiatSymbol`,`totalInFiatTicker`,`rateToFiatValue`,`rateToFiatSymbol`,`rateToFiatTicker`,`ratePercentageChange24h`,`address`,`networkId`,`avatarUrl`,`decimals`,`ticker`,`isCoin`,`name`,`website`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
