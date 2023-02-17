.class public Lcom/google/android/gms/internal/firebase_ml/zzgg;
.super Lcom/google/android/gms/internal/firebase_ml/zzho;


# instance fields
.field private zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlc;->zza(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 7
    throw v0

    .line 8
    :cond_0
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzgj;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    return-void
.end method

.method public synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    return-object p1
.end method

.method public zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    return-object v0
.end method

.method public synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzgg;

    return-object v0
.end method

.method public final zzfp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->zzd(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
