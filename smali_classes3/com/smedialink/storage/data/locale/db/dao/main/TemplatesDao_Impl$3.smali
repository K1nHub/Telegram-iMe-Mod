.class Lcom/smedialink/storage/data/locale/db/dao/main/TemplatesDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "TemplatesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/main/TemplatesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/main/TemplatesDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 77
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;)V
    .locals 4
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

    .line 85
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getMessageId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 87
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getGroupId()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 88
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x5

    .line 93
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getCreationDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 94
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getUsageRating()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getSent()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 96
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 97
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 98
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getMessageId()J

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

    .line 77
    check-cast p2, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/main/TemplatesDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `TemplatesDb` SET `userId` = ?,`messageId` = ?,`groupId` = ?,`templateName` = ?,`creationDate` = ?,`usageRating` = ?,`sent` = ? WHERE `userId` = ? AND `messageId` = ?"

    return-object v0
.end method
