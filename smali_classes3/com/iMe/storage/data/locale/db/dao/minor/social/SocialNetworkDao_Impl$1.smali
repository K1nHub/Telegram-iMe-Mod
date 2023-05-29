.class Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SocialNetworkDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 37
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;)V
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

    .line 45
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getProfileId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocial()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocial()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 56
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 62
    :goto_2
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_3
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 68
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialUserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 72
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 75
    :cond_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 77
    :goto_5
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive()Z

    move-result v0

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 78
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 82
    :cond_6
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
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

    .line 37
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `social` (`profileId`,`social`,`iconUrl`,`socialPosition`,`socialElementId`,`socialElementAvatarUrl`,`socialUserName`,`socialWebUrl`,`isActive`,`beforeConnectMessage`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
