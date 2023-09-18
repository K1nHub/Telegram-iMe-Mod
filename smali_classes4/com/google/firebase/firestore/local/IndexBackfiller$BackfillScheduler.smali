.class public Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;
.super Ljava/lang/Object;
.source "IndexBackfiller.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/IndexBackfiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackfillScheduler"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private hasRun:Z

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field final synthetic this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;


# direct methods
.method public static synthetic $r8$lambda$yD_SG5uQNzU2BAtqST3PWOmOMm4(Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->lambda$scheduleBackfill$0()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->hasRun:Z

    .line 72
    iput-object p2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 73
    iput-object p3, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    return-void
.end method

.method private synthetic lambda$scheduleBackfill$0()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->backfillIndexes(Lcom/google/firebase/firestore/local/IndexBackfiller;)Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->hasRun:Z

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->scheduleBackfill()V

    return-void
.end method

.method private scheduleBackfill()V
    .locals 5

    .line 89
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->hasRun:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$000()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$100()J

    move-result-wide v0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v3, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v4, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;)V

    .line 91
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;->scheduleBackfill()V

    return-void
.end method
