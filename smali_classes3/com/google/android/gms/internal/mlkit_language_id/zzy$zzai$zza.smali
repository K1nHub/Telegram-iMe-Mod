.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
.source "com.google.mlkit:language-id@@16.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb<",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzgb;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzx;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(F)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;F)V

    return-object p0
.end method
