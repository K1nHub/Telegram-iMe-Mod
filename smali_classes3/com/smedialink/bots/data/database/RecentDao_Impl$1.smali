.class Lcom/smedialink/bots/data/database/RecentDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "RecentDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/RecentDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/smedialink/bots/data/model/database/RecentDbModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/database/RecentDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 28
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/RecentDbModel;)V
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

    .line 36
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getBotId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getBotId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 46
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 47
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->getCounter()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

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

    .line 28
    check-cast p2, Lcom/smedialink/bots/data/model/database/RecentDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/RecentDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/RecentDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `RecentDbModel` (`botId`,`tag`,`position`,`counter`) VALUES (?,?,?,?)"

    return-object v0
.end method
