.class Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;
.super Ljava/lang/Object;
.source "SocialNetworkDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->clearByUserId(J)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

.field final synthetic val$profileId:J


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$profileId"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    iput-wide p2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->val$profileId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 125
    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->val$profileId:J

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 126
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$100(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 129
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$100(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$100(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 133
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 132
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$100(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 133
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-static {v2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 134
    throw v1
.end method
