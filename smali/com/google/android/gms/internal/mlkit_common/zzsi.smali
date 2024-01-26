.class final Lcom/google/android/gms/internal/mlkit_common/zzsi;
.super Lcom/google/android/gms/internal/mlkit_common/zzsu;
.source "com.google.mlkit:common@@18.10.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zznf;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zznl;ILcom/google/android/gms/internal/mlkit_common/zzsh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzsu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzg:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzsu;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzsu;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzc()Lcom/google/android/gms/internal/mlkit_common/zznf;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzg()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzf()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzd()Lcom/google/android/gms/internal/mlkit_common/zznl;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzg:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zza()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd:Z

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzg:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteModelLoggingOptions{errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tfliteSchemaVersion="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldLogRoughDownloadTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shouldLogExactDownloadTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modelType="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadStatus="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failureStatusCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzg:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzg:I

    return v0
.end method

.method public final zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zznf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza:Lcom/google/android/gms/internal/mlkit_common/zznf;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zznl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznl;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc:Z

    return v0
.end method
