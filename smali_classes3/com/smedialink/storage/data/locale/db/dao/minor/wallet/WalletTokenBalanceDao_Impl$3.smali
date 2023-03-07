.class Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "WalletTokenBalanceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 91
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V
    .locals 3
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

    .line 99
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 100
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 105
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotal()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 v0, 0x4

    .line 106
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInDollars()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 v0, 0x5

    .line 107
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToDollars()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 v0, 0x6

    .line 108
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRatePercentageChange24h()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 109
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 110
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/16 v0, 0x8

    .line 114
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_2

    .line 116
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 120
    :goto_2
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_3

    .line 121
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
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

    .line 91
    check-cast p2, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `WalletTokenBalanceDb` SET `tgUserId` = ?,`coinCode` = ?,`total` = ?,`totalInDollars` = ?,`rateToDollars` = ?,`ratePercentageChange24h` = ?,`networkType` = ? WHERE `tgUserId` = ? AND `coinCode` = ? AND `networkType` = ?"

    return-object v0
.end method
