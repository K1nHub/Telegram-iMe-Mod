.class Lcom/smedialink/bots/data/database/BotsDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 290
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/BotsDbModel;)V
    .locals 2
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

    .line 298
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 299
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
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

    .line 290
    check-cast p2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/BotsDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `BotsDbModel` WHERE `id` = ?"

    return-object v0
.end method
