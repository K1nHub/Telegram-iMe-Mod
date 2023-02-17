.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;->zzkk()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(F)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrm()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;F)V

    return-object p0
.end method
