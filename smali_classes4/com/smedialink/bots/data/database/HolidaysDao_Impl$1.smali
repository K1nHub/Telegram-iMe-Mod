.class Lcom/smedialink/bots/data/database/HolidaysDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "HolidaysDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/HolidaysDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/smedialink/bots/data/model/database/HolidaysDbModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 27
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/HolidaysDbModel;)V
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

    .line 35
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/HolidaysDbModel;->getUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/HolidaysDbModel;->getTags()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/database/HolidaysDbModel;->getTags()Ljava/lang/String;

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

    .line 27
    check-cast p2, Lcom/smedialink/bots/data/model/database/HolidaysDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/HolidaysDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/bots/data/model/database/HolidaysDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `HolidaysDbModel` (`userId`,`tags`) VALUES (?,?)"

    return-object v0
.end method
