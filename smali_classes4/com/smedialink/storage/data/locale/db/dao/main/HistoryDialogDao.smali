.class public abstract Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;
.super Ljava/lang/Object;
.source "HistoryDialogDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearRecentChatHistory()V
.end method

.method public abstract deleteByIdList(Ljava/util/List;J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation
.end method

.method public abstract getHistoryDialog(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeRecentChatHistory(JJ)V
.end method

.method public abstract updatePinned(JJZ)V
.end method
