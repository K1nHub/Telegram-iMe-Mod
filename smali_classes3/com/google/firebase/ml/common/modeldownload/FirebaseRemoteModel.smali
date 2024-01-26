.class public Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;
.super Ljava/lang/Object;


# static fields
.field private static final zzawu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/ml/common/modeldownload/BaseModel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzawv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/ml/common/modeldownload/BaseModel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzauc:Ljava/lang/String;

.field private zzawa:Ljava/lang/String;

.field private final zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

.field private final zzaww:Z

.field private final zzawx:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

.field private final zzawy:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawu:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    sput-object v1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawv:Ljava/util/Map;

    sget-object v2, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawi:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v3, "face_detector_model_m41"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawj:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v4, "smart_reply_model_m41"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v4, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->TRANSLATE:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v5, "translate_model_m41"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "modelHash"

    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "smart_reply_model_hash"

    .line 56
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public baseModelHashMatches(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    sget-object v1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawu:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 36
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    iget-object v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    .line 37
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzaww:Z

    iget-boolean v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzaww:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawx:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    iget-object v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawx:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    .line 38
    invoke-virtual {v1, v3}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawy:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    iget-object p1, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawy:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    .line 39
    invoke-virtual {v1, p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getInitialDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawx:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    return-object v0
.end method

.method public getModelHash()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawa:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNameForBackend()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawv:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueModelNameForPersist()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "COM.GOOGLE.BASE_"

    .line 21
    sget-object v1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawv:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

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

.method public getUpdatesDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawy:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzauc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzaww:Z

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawx:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    aput-object v4, v1, v2

    .line 43
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawy:Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    aput-object v3, v1, v2

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBaseModel()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawt:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isModelUpdatesEnabled()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzaww:Z

    return v0
.end method

.method public setModelHash(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->zzawa:Ljava/lang/String;

    return-void
.end method
