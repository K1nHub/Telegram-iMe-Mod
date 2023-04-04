.class Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "TopicsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 90
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;)V
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

    .line 98
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 109
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getOrder()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getPresets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertLongListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 112
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 114
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 116
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getDialogs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertLongListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 118
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 120
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x7

    .line 122
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 123
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 124
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v1

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

    .line 90
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `TopicDb` SET `topicId` = ?,`name` = ?,`icon` = ?,`order` = ?,`presets` = ?,`dialogs` = ?,`userId` = ? WHERE `userId` = ? AND `topicId` = ?"

    return-object v0
.end method
