.class public final Lcom/google/android/gms/internal/firebase_ml/zzpk;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzavk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzpk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

.field private final zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

.field private final zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

.field private final zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

.field private final zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

.field private final zzawd:Lcom/google/android/gms/internal/firebase_ml/zzpj;

.field private zzawe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavk:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzot;Lcom/google/android/gms/internal/firebase_ml/zzpj;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzpd;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/firebase_ml/zzpd;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzot;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawe:Z

    .line 4
    new-instance p3, Lcom/google/android/gms/internal/firebase_ml/zzpa;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzpa;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzok;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzok;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 6
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzok;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzoz;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawd:Lcom/google/android/gms/internal/firebase_ml/zzpj;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzot;Lcom/google/android/gms/internal/firebase_ml/zzpj;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzpk;
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzpk;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavk:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzpk;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzpk;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzot;Lcom/google/android/gms/internal/firebase_ml/zzpj;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavk:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavk:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zzah(Z)Ljava/nio/MappedByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmc()Ljava/lang/Long;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "RemoteModelLoader"

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmf()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    return-object v2

    .line 41
    :cond_1
    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Download Status code: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    const-string v0, "Model downloaded successfully"

    .line 43
    invoke-virtual {v5, v3, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v8, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmg()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    return-object v2

    :cond_2
    const-string v4, "moving downloaded model from external storage to private folder."

    .line 50
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    .line 52
    invoke-virtual {v4, v0, v1, v6}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zza(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    if-nez v0, :cond_3

    return-object v2

    .line 61
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzg(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    const-string v4, "Moved the downloaded model to private folder successfully: "

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 64
    :goto_0
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    if-eqz p1, :cond_5

    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zzd(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "All old models are deleted."

    .line 67
    invoke-virtual {v5, v3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zzf(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzg(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    .line 58
    throw p1

    .line 71
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_7

    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    .line 73
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zza(Ljava/lang/Long;)I

    move-result v0

    .line 74
    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(ZLcom/google/android/gms/internal/firebase_ml/zzor;I)V

    .line 76
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    :cond_7
    return-object v2

    .line 32
    :cond_8
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "No new model is downloading."

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzme()V

    return-object v2
.end method

.method private final zzbw(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawd:Lcom/google/android/gms/internal/firebase_ml/zzpj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpj;->zzbv(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private final zzg(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzbw(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zze(Ljava/io/File;)V

    .line 81
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v1, 0xe

    const-string v2, "Failed to load newly downloaded model."

    invoke-direct {p1, v2, v1, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method

.method private final zzmq()Ljava/nio/MappedByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zzmm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "No existing model file"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzbw(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawc:Lcom/google/android/gms/internal/firebase_ml/zzpd;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzpd;->zze(Ljava/io/File;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzi(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V

    .line 92
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v2, 0xe

    const-string v3, "Failed to load an already downloaded model."

    invoke-direct {v0, v3, v2, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized load()Ljava/nio/MappedByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelLoader"

    const-string v2, "Try to load newly downloaded model file."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawe:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzah(Z)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RemoteModelLoader"

    const-string v2, "Loading existing model file."

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzmq()Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 22
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawe:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmj()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawe:Z

    const-string v3, "RemoteModelLoader"

    const-string v4, "Initial loading, check for model updates."

    .line 24
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavp:Lcom/google/android/gms/internal/firebase_ml/zzpa;

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzawb:Lcom/google/android/gms/internal/firebase_ml/zzoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoz;->zzmb()Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzmp()Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    return-object v0
.end method
