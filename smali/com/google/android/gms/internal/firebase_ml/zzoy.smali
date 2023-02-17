.class final Lcom/google/android/gms/internal/firebase_ml/zzoy;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelInfoRetriever"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzpe;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const-string v0, "inferenceInfo"

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getModelNameForBackend()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzph;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "Content-Location"

    .line 6
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ETag"

    .line 7
    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v6, "Received download URL: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_0
    const-string v7, "ModelInfoRetriever"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    const/16 v5, 0xd

    if-eqz v4, :cond_8

    .line 14
    invoke-virtual {p1, v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->setModelHash(Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 16
    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string v1, "{}"

    .line 19
    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 22
    :goto_1
    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v0, "labels"

    .line 26
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 31
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 28
    :cond_6
    new-instance p0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p1, "Cannot parse AutoML model\'s labels from model downloading backend."

    invoke-direct {p0, p1, v5}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 36
    :cond_7
    :goto_3
    new-instance p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 41
    :goto_4
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p2, "Failed to parse the model backend response message"

    invoke-direct {p1, p2, v5, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    .line 12
    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafi:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    invoke-virtual {p2, p0, v2, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 13
    new-instance p0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p1, "No hash value for the custom model"

    invoke-direct {p0, p1, v5}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 45
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ModelInfoRetriever"

    if-nez v1, :cond_0

    .line 47
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "Cannot get a valid instance of FirebaseInstanceId. Cannot retrieve model info."

    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 49
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 51
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "Firebase instance id is null. Cannot retrieve model info."

    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "*"

    .line 53
    invoke-virtual {v1, v0, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    .line 64
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "Firebase instance token is null. Cannot retrieve model info."

    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    .line 68
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const/4 p0, 0x3

    aput-object v4, v0, p0

    const/4 p0, 0x4

    aput-object p2, v0, p0

    const-string p0, "https://mlkit.googleapis.com/v1beta1/projects/%s/models/%s/versions/active?key=%s&app_instance_id=%s&app_instance_token=%s"

    .line 69
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 56
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafj:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 58
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3

    .line 59
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafe:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const-string v0, "Failed to retrieve model info due to no internet connection."

    goto :goto_0

    :cond_3
    const-string v0, "Failed to get model URL"

    .line 61
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    invoke-virtual {p2, p1, v5, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 62
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 p2, 0xd

    invoke-direct {p1, v0, p2, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_4
    new-instance p0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 p1, 0x9

    const-string p2, "GCM sender id cannot be null in FirebaseOptions. Please configure FirebaseApp properly."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
