.class Lcom/iMe/bots/data/database/BotsTagDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "BotsTagDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/database/BotsTagDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/iMe/bots/data/model/database/TagDbModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/bots/data/database/BotsTagDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 32
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/bots/data/model/database/TagDbModel;)V
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

    .line 40
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 50
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getHidden()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 51
    invoke-virtual {p2}, Lcom/iMe/bots/data/model/database/TagDbModel;->getLocales()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/iMe/bots/data/database/converter/Converter;->fromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_2

    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
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

    .line 32
    check-cast p2, Lcom/iMe/bots/data/model/database/TagDbModel;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/database/BotsTagDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/bots/data/model/database/TagDbModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `TagDbModel` (`id`,`title`,`hidden`,`locales`) VALUES (?,?,?,?)"

    return-object v0
.end method
