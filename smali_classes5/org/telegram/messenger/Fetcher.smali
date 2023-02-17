.class public abstract Lorg/telegram/messenger/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Args:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;TR;>;"
        }
    .end annotation
.end field

.field private lastRequestedRemotely:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private loadingCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "TR;>;>;>;"
        }
    .end annotation
.end field

.field private requestRemotelyTimeout:J


# direct methods
.method public static synthetic $r8$lambda$Xh5QsqBrPrl803l3Ra7eLIU8PA8(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/Fetcher;->lambda$callCallbacks$2(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ekW5WdB4I5zSenLKuYxYkLWOP08(Lorg/telegram/messenger/Fetcher;Landroid/util/Pair;ILjava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/Fetcher;->lambda$fetch$1(Landroid/util/Pair;ILjava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gxvGBPf4sQekmTuiX8gs2iEj58U(Lorg/telegram/messenger/Fetcher;Landroid/util/Pair;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/Fetcher;->lambda$fetch$0(Landroid/util/Pair;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3a980

    .line 24
    iput-wide v0, p0, Lorg/telegram/messenger/Fetcher;->requestRemotelyTimeout:J

    return-void
.end method

.method private cacheResult(Landroid/util/Pair;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;TR;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->cachedResults:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/Fetcher;->cachedResults:Ljava/util/HashMap;

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->cachedResults:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callCallbacks(Landroid/util/Pair;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;TR;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    new-instance v1, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 130
    iget-object p2, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCachedResult(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;)TR;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->cachedResults:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private isLoading(Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;)Z"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$callCallbacks$2(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Utilities$Callback;

    .line 125
    invoke-interface {v1, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$fetch$0(Landroid/util/Pair;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 6

    .line 51
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/Fetcher;->cacheResult(Landroid/util/Pair;Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/Fetcher;->callCallbacks(Landroid/util/Pair;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 56
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/Fetcher;->setLocal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 57
    invoke-direct {p0, p1, p6}, Lorg/telegram/messenger/Fetcher;->cacheResult(Landroid/util/Pair;Ljava/lang/Object;)V

    .line 59
    :cond_1
    invoke-direct {p0, p1, p6}, Lorg/telegram/messenger/Fetcher;->callCallbacks(Landroid/util/Pair;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fetch$1(Landroid/util/Pair;ILjava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 9

    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/Fetcher;->shouldRequest(Landroid/util/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/Fetcher;->saveLastRequested(Landroid/util/Pair;)V

    .line 50
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Fetcher;Landroid/util/Pair;Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide v3, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/Fetcher;->getRemote(ILjava/lang/Object;JLorg/telegram/messenger/Utilities$Callback3;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, p1, p5}, Lorg/telegram/messenger/Fetcher;->cacheResult(Landroid/util/Pair;Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p1, p5}, Lorg/telegram/messenger/Fetcher;->callCallbacks(Landroid/util/Pair;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private saveCallback(Landroid/util/Pair;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "TR;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->loadingCallbacks:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 110
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private saveLastRequested(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->lastRequestedRemotely:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/Fetcher;->lastRequestedRemotely:Ljava/util/HashMap;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->lastRequestedRemotely:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private shouldRequest(Landroid/util/Pair;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TArgs;>;)Z"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/Fetcher;->lastRequestedRemotely:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/Fetcher;->requestRemotelyTimeout:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method


# virtual methods
.method public fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITArgs;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, v0}, Lorg/telegram/messenger/Fetcher;->isLoading(Landroid/util/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-direct {p0, v0, p3}, Lorg/telegram/messenger/Fetcher;->saveCallback(Landroid/util/Pair;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 38
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/Fetcher;->getCachedResult(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    invoke-direct {p0, v0}, Lorg/telegram/messenger/Fetcher;->shouldRequest(Landroid/util/Pair;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    .line 41
    invoke-interface {p3, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-direct {p0, v0, p3}, Lorg/telegram/messenger/Fetcher;->saveCallback(Landroid/util/Pair;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 47
    new-instance p3, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0, p1, p2}, Lorg/telegram/messenger/Fetcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Fetcher;Landroid/util/Pair;ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/Fetcher;->getLocal(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method protected getLocal(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITArgs;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "TR;>;)V"
        }
    .end annotation

    const-wide/16 p1, 0x0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected getRemote(ILjava/lang/Object;JLorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITArgs;J",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/lang/Boolean;",
            "TR;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setLocal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITArgs;TR;J)V"
        }
    .end annotation

    return-void
.end method
