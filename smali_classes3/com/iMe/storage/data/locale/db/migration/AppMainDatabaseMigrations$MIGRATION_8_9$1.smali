.class public final Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_8_9$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    .line 76
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE WalletConnectSessionDb (tgUserId INTEGER NOT NULL, sessionTopic TEXT NOT NULL, sessionVersion TEXT NOT NULL, sessionBridge TEXT NOT NULL, sessionKey TEXT NOT NULL, chainId INTEGER NOT NULL, peerId TEXT NOT NULL, remotePeerId TEXT NOT NULL, remotePeerMetaName TEXT NOT NULL, remotePeerMetaUrl TEXT NOT NULL, remotePeerMetaDescription TEXT, remotePeerMetaIcons TEXT NOT NULL, isAutoSign INTEGER NOT NULL, date INTEGER NOT NULL, PRIMARY KEY(tgUserId, sessionKey))"

    .line 78
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE TemplatesDb (userId INTEGER NOT NULL, messageId INTEGER NOT NULL, groupId INTEGER NOT NULL, templateName TEXT NOT NULL, creationDate INTEGER NOT NULL, usageRating INTEGER NOT NULL, sent INTEGER NOT NULL, PRIMARY KEY(userId, messageId))"

    .line 79
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
