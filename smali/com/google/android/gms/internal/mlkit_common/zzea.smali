.class public final Lcom/google/android/gms/internal/mlkit_common/zzea;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# direct methods
.method public static zza(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzec;->zza:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;

    return-object p0
.end method
