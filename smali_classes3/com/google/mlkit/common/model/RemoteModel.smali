.class public Lcom/google/mlkit/common/model/RemoteModel;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# static fields
.field private static final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/mlkit/common/sdkinternal/model/BaseModel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 32
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/google/mlkit/common/model/RemoteModel;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModel;

    .line 26
    iget-object v2, p0, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    iget-object p1, p1, Lcom/google/mlkit/common/model/RemoteModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getModelHash()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNameForBackend()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    sget-object v0, Lcom/google/mlkit/common/model/RemoteModel;->zze:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueModelNameForPersist()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "COM.GOOGLE.BASE_"

    .line 14
    sget-object v1, Lcom/google/mlkit/common/model/RemoteModel;->zze:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/mlkit/common/model/RemoteModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
