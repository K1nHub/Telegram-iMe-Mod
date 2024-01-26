.class public Lcom/google/android/gms/internal/firebase_ml/zzuu$zzd;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzuu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method


# virtual methods
.method protected final zzrm()V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrm()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzum;

    iput-object v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    return-void
.end method

.method public synthetic zzrn()Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    return-object v0
.end method

.method public synthetic zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzqa()V

    .line 13
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrn()Lcom/google/android/gms/internal/firebase_ml/zzuu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    return-object v0
.end method
