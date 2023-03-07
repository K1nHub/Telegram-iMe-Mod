.class public Lcom/google/firebase/firestore/local/IndexBackfiller;
.super Ljava/lang/Object;
.source "IndexBackfiller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;,
        Lcom/google/firebase/firestore/local/IndexBackfiller$Results;
    }
.end annotation


# static fields
.field private static final INITIAL_BACKFILL_DELAY_MS:J

.field private static final REGULAR_BACKFILL_DELAY_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    return-wide v0
.end method


# virtual methods
.method public backfill()Lcom/google/firebase/firestore/local/IndexBackfiller$Results;
    .locals 3

    .line 110
    new-instance v0, Lcom/google/firebase/firestore/local/IndexBackfiller$Results;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/firestore/local/IndexBackfiller$Results;-><init>(ZII)V

    return-object v0
.end method

.method public newScheduler(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;
    .locals 1

    .line 103
    new-instance v0, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/IndexBackfiller$BackfillScheduler;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V

    return-object v0
.end method
