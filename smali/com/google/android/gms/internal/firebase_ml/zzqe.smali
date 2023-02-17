.class public final Lcom/google/android/gms/internal/firebase_ml/zzqe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzns;


# instance fields
.field public final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjg;",
            ">;"
        }
    .end annotation
.end field

.field public final imageContext:Lcom/google/android/gms/internal/firebase_ml/zzjh;

.field public final zzbag:[B

.field public final zzbah:F


# direct methods
.method public constructor <init>([BFLjava/util/List;Lcom/google/android/gms/internal/firebase_ml/zzjh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BF",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjg;",
            ">;",
            "Lcom/google/android/gms/internal/firebase_ml/zzjh;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqe;->zzbag:[B

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqe;->zzbah:F

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqe;->features:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqe;->imageContext:Lcom/google/android/gms/internal/firebase_ml/zzjh;

    return-void
.end method
