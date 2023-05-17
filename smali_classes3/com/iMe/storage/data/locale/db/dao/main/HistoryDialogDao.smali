.class public abstract Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
.super Ljava/lang/Object;
.source "HistoryDialogDao.kt"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic clearRecentChatHistory$default(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->clearRecentChatHistory(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clearRecentChatHistory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract clearRecentChatHistory(Z)V
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
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllRecentChatHistory(J)V
.end method

.method public abstract removeRecentChatHistory(JJ)V
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pinnedRecentChats"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->removeAllRecentChatHistory(J)V

    .line 38
    invoke-interface {p0, p3}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method public abstract updatePinned(JJZ)V
.end method
