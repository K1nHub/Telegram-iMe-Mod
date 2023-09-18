.class public Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LruGarbageCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GCScheduler"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private hasRun:Z

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field final synthetic this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;


# direct methods
.method public static synthetic $r8$lambda$AvVRqxEBbBBKUioS2TGJXRmuL14(Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->lambda$scheduleGC$0()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/LruGarbageCollector;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    .line 121
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 122
    iput-object p3, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    return-void
.end method

.method private synthetic lambda$scheduleGC$0()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->collectGarbage(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    .line 148
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->scheduleGC()V

    return-void
.end method

.method private scheduleGC()V
    .locals 5

    .line 140
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$100()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$200()J

    move-result-wide v0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v3, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->GARBAGE_COLLECTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v4, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;)V

    .line 142
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$000(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->scheduleGC()V

    :cond_0
    return-void
.end method
