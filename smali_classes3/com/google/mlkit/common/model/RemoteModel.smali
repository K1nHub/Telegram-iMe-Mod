.class public abstract Lcom/google/mlkit/common/model/RemoteModel;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# static fields
.field public static final zza:Ljava/util/Map;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field private final zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/common/model/RemoteModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModel;

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    iget-object v3, p1, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iget-object p1, p1, Lcom/google/mlkit/common/model/RemoteModel;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getModelHash()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNameForBackend()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    sget-object v1, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method

.method public getUniqueModelNameForPersist()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    sget-object v1, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COM.GOOGLE.BASE_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RemoteModel"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzc:Ljava/lang/String;

    const-string v2, "modelName"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzy;

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzd:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const-string v2, "baseModel"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzy;

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v2, "modelType"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
