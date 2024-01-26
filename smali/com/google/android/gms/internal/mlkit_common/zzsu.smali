.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzsu;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_common/zzst;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzsg;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzsg;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzst;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zznf;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzb(Lcom/google/android/gms/internal/mlkit_common/zznf;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zznl;->zza:Lcom/google/android/gms/internal/mlkit_common/zznl;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zza(Lcom/google/android/gms/internal/mlkit_common/zznl;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzst;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/mlkit_common/zznf;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zznl;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method

.method public abstract zzg()Z
.end method
