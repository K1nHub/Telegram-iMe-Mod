.class Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$2;
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

    .line 70
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

    .line 78
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTgUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 84
    :goto_0
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
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

    .line 70
    check-cast p2, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `WalletTokenBalanceDb` WHERE `tgUserId` = ? AND `coinCode` = ? AND `networkType` = ?"

    return-object v0
.end method
