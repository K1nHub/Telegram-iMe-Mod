.class public final Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_7_9$1;
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

    const/4 v0, 0x7

    const/16 v1, 0x9

    .line 62
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE social (profileId INTEGER NOT NULL, social TEXT NOT NULL, iconUrl TEXT NOT NULL, socialPosition INTEGER NOT NULL, socialElementId TEXT NOT NULL, socialElementAvatarUrl TEXT NOT NULL, socialUserName TEXT NOT NULL, socialWebUrl TEXT NOT NULL, isActive INTEGER NOT NULL, beforeConnectMessage TEXT NOT NULL, PRIMARY KEY(profileId, social))"

    .line 65
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
