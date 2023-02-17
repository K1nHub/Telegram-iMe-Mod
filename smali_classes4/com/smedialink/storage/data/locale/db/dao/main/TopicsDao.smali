.class public abstract Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;
.super Ljava/lang/Object;
.source "TopicsDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTopics(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeTopic(JJ)V
.end method

.method public abstract removeTopics(J)V
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    const-string v0, "topics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;->removeTopics(J)V

    .line 24
    invoke-interface {p0, p3}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method
