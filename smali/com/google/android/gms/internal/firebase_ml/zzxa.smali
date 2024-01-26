.class final Lcom/google/android/gms/internal/firebase_ml/zzxa;
.super Lcom/google/android/gms/internal/firebase_ml/zzxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzxg;"
    }
.end annotation


# instance fields
.field private final synthetic zzbwm:Lcom/google/android/gms/internal/firebase_ml/zzwz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzwz;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzxa;->zzbwm:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxg;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwz;Lcom/google/android/gms/internal/firebase_ml/zzwy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzwz;Lcom/google/android/gms/internal/firebase_ml/zzwy;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxa;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwz;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzxa;->zzbwm:Lcom/google/android/gms/internal/firebase_ml/zzwz;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzxb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwz;Lcom/google/android/gms/internal/firebase_ml/zzwy;)V

    return-object v0
.end method
