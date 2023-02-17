.class final Lcom/google/android/gms/internal/firebase_ml/zzhb$zzb;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzxt:Lcom/google/android/gms/internal/firebase_ml/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzhb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhb$zzb;->zzxt:Lcom/google/android/gms/internal/firebase_ml/zzhb;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzhb$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhb$zzb;->zzxt:Lcom/google/android/gms/internal/firebase_ml/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzhb$zzc;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzhb;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhb$zzb;->zzxt:Lcom/google/android/gms/internal/firebase_ml/zzhb;

    iget v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzhb;->size:I

    return v0
.end method
