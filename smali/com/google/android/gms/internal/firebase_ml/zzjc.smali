.class public final Lcom/google/android/gms/internal/firebase_ml/zzjc;
.super Lcom/google/android/gms/internal/firebase_ml/zzgg;


# instance fields
.field private isPrefix:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjc;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjc;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjc;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjc;

    return-object p1
.end method

.method public final synthetic zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjc;

    return-object v0
.end method

.method public final synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjc;

    return-object v0
.end method

.method public final zzhl()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjc;->isPrefix:Ljava/lang/Boolean;

    return-object v0
.end method
