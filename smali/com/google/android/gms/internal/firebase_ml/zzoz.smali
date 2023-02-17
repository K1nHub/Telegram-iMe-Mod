.class public final Lcom/google/android/gms/internal/firebase_ml/zzoz;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static final zzavk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzoz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

.field private final zzavl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/firebase_ml/zzpb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzavm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzavn:Landroid/app/DownloadManager;

.field private final zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

.field private final zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

.field private final zzavq:Lcom/google/android/gms/internal/firebase_ml/zzok;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 230
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavk:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzok;Lcom/google/android/gms/internal/firebase_ml/zzpa;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavl:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavm:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    if-nez p2, :cond_0

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "ModelDownloadManager"

    const-string v1, "Download manager service is not available in the service."

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavq:Lcom/google/android/gms/internal/firebase_ml/zzok;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzok;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzoz;
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavk:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzoz;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzok;Lcom/google/android/gms/internal/firebase_ml/zzpa;)V

    .line 4
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzoz;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzoz;Ljava/lang/Long;)Lcom/google/firebase/ml/common/FirebaseMLException;
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Ljava/lang/Long;)Lcom/google/firebase/ml/common/FirebaseMLException;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zza(Landroid/app/DownloadManager$Request;Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 37
    monitor-exit p0

    return-object p1

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 39
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "ModelDownloadManager"

    const/16 v3, 0x35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Schedule a new downloading task: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zza(JLcom/google/android/gms/internal/firebase_ml/zzpe;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p2

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 43
    invoke-virtual {p1, v2, v3, p2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzb(Ljava/lang/Long;)Lcom/google/firebase/ml/common/FirebaseMLException;
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_3

    .line 206
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "reason"

    .line 207
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 v1, 0x3ee

    if-ne p1, v1, :cond_2

    const/16 v0, 0x65

    const-string p1, "Model downloading failed due to insufficient space on the device."

    goto :goto_2

    :cond_2
    const/16 v1, 0x54

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Model downloading failed due to error code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from Android DownloadManager"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "Model downloading failed"

    .line 212
    :goto_2
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzb(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmf()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmf()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmk()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 114
    invoke-virtual {p1, v0, v2, v1, v4}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 115
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "ModelDownloadManager"

    const-string v1, "New model is already in downloading, do nothing."

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-object v3

    .line 117
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v4, "Need to download a new model."

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    .line 119
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 120
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 121
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getInitialDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavq:Lcom/google/android/gms/internal/firebase_ml/zzok;

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/firebase_ml/zzok;->zza(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->isModelUpdatesEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "ModelDownloadManager"

    const-string v1, "Model update is disabled and have a previous downloaded model, skip downloading"

    .line 124
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_2
    const-string v3, "ModelDownloadManager"

    const-string v4, "Model update is enabled and have a previous downloaded model, use download condition"

    .line 126
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 129
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 130
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUpdatesDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    move-result-object v4

    :cond_3
    const-string v2, "ModelDownloadManager"

    const-string v3, "Use initial download conditions."

    .line 131
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4

    .line 133
    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isChargingRequired()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 134
    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isDeviceIdleRequired()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;

    .line 135
    :cond_4
    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isWifiRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 136
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 137
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zza(Landroid/app/DownloadManager$Request;Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzoz;)Ljava/util/Map;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavl:Ljava/util/Map;

    return-object p0
.end method

.method private static zzb(Ljava/lang/Integer;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 214
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzoz;)Ljava/util/Map;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavm:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_ml/zzoz;)Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmk()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase_ml/zzoz;)Lcom/google/android/gms/internal/firebase_ml/zzpa;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    return-object p0
.end method

.method private final declared-synchronized zzmh()Lcom/google/android/gms/internal/firebase_ml/zzpe;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmj()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzd(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzaly:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 77
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    .line 79
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzph;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzpe;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 81
    monitor-exit p0

    return-object v3

    .line 82
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 83
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object v7

    .line 86
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zze(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zznm;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzlt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 90
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v5, "ModelDownloadManager"

    const-string v7, "The model is incompatible with TFLite and the app is not upgraded, do not download"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 95
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzi(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V

    .line 96
    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v4, v6

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    if-eqz v4, :cond_6

    .line 102
    :cond_5
    monitor-exit p0

    return-object v2

    :cond_6
    if-eqz v0, :cond_7

    xor-int v0, v4, v1

    if-eqz v0, :cond_7

    .line 104
    monitor-exit p0

    return-object v3

    .line 105
    :cond_7
    :try_start_2
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 106
    invoke-virtual {v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "The model "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is incompatible with TFLite runtime"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzmk()Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzb(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-object v0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzbs(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzml()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    .line 224
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method

.method private final declared-synchronized zzn(J)Lcom/google/android/gms/internal/firebase_ml/zzpb;
    .locals 7

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavl:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzpb;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzo(J)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzoz;JLcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase_ml/zzpc;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavl:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavl:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzpb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzo(J)Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavm:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavm:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavm:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzp(J)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzn(J)Lcom/google/android/gms/internal/firebase_ml/zzpb;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 219
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzlk()Lcom/google/android/gms/internal/firebase_ml/zznn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_ml/zznn;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    .line 221
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzo(J)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final zza(Ljava/lang/Long;)I
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "reason"

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_2
    return v1
.end method

.method final declared-synchronized zze(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzmb()Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmh()Lcom/google/android/gms/internal/firebase_ml/zzpe;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v2, "No model updates for model: "

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v3}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 22
    monitor-exit p0

    return-object v0

    .line 23
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzmc()Ljava/lang/Long;
    .locals 2

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzmd()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzb(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzme()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmc()Ljava/lang/Long;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "ModelDownloadManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cancel or remove existing downloading task: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmf()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavq:Lcom/google/android/gms/internal/firebase_ml/zzok;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 32
    invoke-virtual {v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmk()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzh(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_2
    monitor-exit p0

    return-void

    .line 28
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzmf()Ljava/lang/Integer;
    .locals 9

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmc()Ljava/lang/Long;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [J

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "status"

    .line 51
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 53
    monitor-exit p0

    return-object v2

    .line 54
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 60
    :goto_1
    monitor-exit p0

    return-object v2

    .line 47
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzmg()Landroid/os/ParcelFileDescriptor;
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmc()Ljava/lang/Long;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavn:Landroid/app/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catch_0
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadManager"

    const-string v3, "Downloaded file is not found"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-object v2

    .line 63
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzmi()Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmh()Lcom/google/android/gms/internal/firebase_ml/zzpe;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    const/16 v3, 0xd

    .line 144
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmf()Ljava/lang/Integer;

    move-result-object v5

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmc()Ljava/lang/Long;

    move-result-object v6

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmj()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    :cond_0
    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 160
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    .line 161
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 162
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmd()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 166
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmk()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    .line 167
    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 168
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzp(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    .line 169
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    .line 171
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Failed to schedule the download task"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 172
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzp(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 148
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 150
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzp(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 151
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "ModelDownloadManager"

    const-string v4, "Didn\'t schedule download for the updated model"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_9

    .line 152
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9

    .line 154
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzb(Ljava/lang/Long;)Lcom/google/firebase/ml/common/FirebaseMLException;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 157
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 174
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v2, "Failed to ensure the model is downloaded."

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final zzmj()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavq:Lcom/google/android/gms/internal/firebase_ml/zzok;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 185
    invoke-virtual {v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 186
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzd(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzok;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Z

    move-result v0

    return v0
.end method
