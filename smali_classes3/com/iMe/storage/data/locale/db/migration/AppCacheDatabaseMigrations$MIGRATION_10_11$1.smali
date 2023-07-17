.class public final Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_10_11$1;
.super Landroidx/room/migration/Migration;
.source "AppCacheDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xb

    .line 81
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP TABLE WalletTokenBalanceDb"

    .line 85
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, total REAL NOT NULL, totalInFiatValue REAL NOT NULL, totalInFiatSymbol TEXT NOT NULL, totalInFiatTicker TEXT NOT NULL, rateToFiatValue REAL NOT NULL, rateToFiatSymbol TEXT NOT NULL, rateToFiatTicker TEXT NOT NULL, ratePercentageChange24h REAL NOT NULL, address TEXT NOT NULL, networkId TEXT NOT NULL, avatarUrl TEXT NOT NULL, decimals INTEGER NOT NULL, ticker TEXT NOT NULL, isCoin INTEGER NOT NULL, name TEXT NOT NULL, website TEXT NOT NULL, PRIMARY KEY(tgUserId, ticker, networkId))"

    .line 87
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
