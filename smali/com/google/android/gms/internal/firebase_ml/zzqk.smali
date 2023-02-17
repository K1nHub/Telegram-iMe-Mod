.class public final Lcom/google/android/gms/internal/firebase_ml/zzqk;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzbbd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzbbe:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "StreamingFormatChecker"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbe:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 6

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbd:Ljava/util/LinkedList;

    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbe:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    sub-long v2, v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    .line 14
    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    .line 15
    :cond_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzbbe:J

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "StreamingFormatChecker"

    const-string v1, "ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit."

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
