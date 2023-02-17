.class final Lcom/google/android/gms/internal/firebase_ml/zzho$zza;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzzl:Lcom/google/android/gms/internal/firebase_ml/zzhn;

.field private final synthetic zzzm:Lcom/google/android/gms/internal/firebase_ml/zzho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzho;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzm:Lcom/google/android/gms/internal/firebase_ml/zzho;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzhi;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgu()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzhi;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhi;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzhn;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzl:Lcom/google/android/gms/internal/firebase_ml/zzhn;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzm:Lcom/google/android/gms/internal/firebase_ml/zzho;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzl:Lcom/google/android/gms/internal/firebase_ml/zzhn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhn;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzm:Lcom/google/android/gms/internal/firebase_ml/zzho;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzl:Lcom/google/android/gms/internal/firebase_ml/zzhn;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzho$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzho;Lcom/google/android/gms/internal/firebase_ml/zzhn;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzm:Lcom/google/android/gms/internal/firebase_ml/zzho;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;->zzzl:Lcom/google/android/gms/internal/firebase_ml/zzhn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzhn;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
