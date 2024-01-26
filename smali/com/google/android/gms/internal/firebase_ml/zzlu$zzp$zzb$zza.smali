.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzjf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrm()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)V

    return-object p0
.end method

.method public final zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrm()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;Ljava/lang/Iterable;)V

    return-object p0
.end method
