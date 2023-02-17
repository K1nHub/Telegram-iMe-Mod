.class public final Lcom/google/android/gms/internal/firebase_ml/zzph;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RmModelInfoRetriever"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzph;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xd

    .line 11
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzpl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzpl;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzph;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "RmModelInfoRetriever"

    const-string v4, "Checking model URL: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v3, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzpl;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x7d0

    .line 14
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 15
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 16
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x130

    if-eq v1, v2, :cond_4

    const/16 v2, 0x198

    if-ne v1, v2, :cond_2

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafb:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    goto :goto_1

    .line 20
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafh:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 21
    :goto_1
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;I)V

    .line 22
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_2

    .line 23
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    .line 24
    :goto_2
    new-instance v2, Lcom/google/firebase/ml/common/FirebaseMLException;

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Failed to connect to Firebase ML console server with HTTP status code: %d and error message: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object v1, v5, p0

    .line 27
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p0

    :catch_0
    move-exception p0

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafj:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 35
    instance-of v2, p0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_5

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafe:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const-string v2, "Failed to retrieve model info due to no internet connection."

    goto :goto_3

    :cond_5
    const-string v2, "Failed to get model URL"

    .line 38
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzh(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    .line 39
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    invoke-direct {p1, v2, v0, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafb:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzh(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    .line 31
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Failed to get model URL due to time out"

    invoke-direct {p1, v1, v0, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method

.method static zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzpe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->isBaseModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoh;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzpe;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoy;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzpe;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzals:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 7
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    :cond_1
    return-object p0
.end method
