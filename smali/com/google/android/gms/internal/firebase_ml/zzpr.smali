.class public final Lcom/google/android/gms/internal/firebase_ml/zzpr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzno;
.implements Lcom/google/android/gms/internal/firebase_ml/zznx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzno<",
        "Lcom/google/firebase/ml/custom/FirebaseModelOutputs;",
        "Lcom/google/android/gms/internal/firebase_ml/zzpn;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zznx;"
    }
.end annotation


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field public static final zzaxq:Ljava/lang/String;

.field private static final zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

.field private final zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

.field private final zzaxk:Z

.field private final zzaxs:Lcom/google/android/gms/internal/firebase_ml/zzon;

.field private final zzaxt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 186
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxq:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelInterpreterTask"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxk:Z

    const/4 p4, 0x2

    .line 9
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    if-eqz p3, :cond_0

    .line 11
    new-instance p4, Lcom/google/android/gms/internal/firebase_ml/zzpo;

    invoke-direct {p4}, Lcom/google/android/gms/internal/firebase_ml/zzpo;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzpq;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzpq;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 13
    invoke-static {p1, p3, p4, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzot;Lcom/google/android/gms/internal/firebase_ml/zzpj;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzpk;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzoj;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzoj;-><init>(Landroid/content/Context;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    .line 18
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Remote model is: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Local model is: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ModelInterpreterTask"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzon;

    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzpu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzpu;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;)V

    invoke-direct {p1, p4, v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzon;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzpk;Lcom/google/android/gms/internal/firebase_ml/zzoj;Lcom/google/android/gms/internal/firebase_ml/zzop;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxs:Lcom/google/android/gms/internal/firebase_ml/zzon;

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzpn;)Lcom/google/firebase/ml/custom/FirebaseModelOutputs;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 22
    iget-object v0, v5, Lcom/google/android/gms/internal/firebase_ml/zzpn;->zzaxm:Lcom/google/firebase/ml/custom/FirebaseModelInputs;

    .line 23
    iget-object v1, v5, Lcom/google/android/gms/internal/firebase_ml/zzpn;->zzaxn:Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    .line 24
    iget-object v2, v7, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzmt()Ljava/util/Map;

    move-result-object v8

    .line 26
    iget-object v2, v7, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    if-eqz v2, :cond_e

    .line 27
    invoke-virtual {v1}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzmr()Landroid/util/SparseArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/ml/custom/FirebaseModelInputs;->zzmu()[Ljava/lang/Object;

    move-result-object v9

    .line 31
    array-length v10, v9

    if-ne v2, v10, :cond_d

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v2, :cond_7

    .line 35
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 36
    aget-object v11, v9, v15

    .line 37
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    const-string v14, "Data can not be null"

    .line 38
    invoke-static {v11, v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "DataSpec can not be null"

    .line 39
    invoke-static {v12, v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    instance-of v14, v11, Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_1

    .line 41
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmz()I

    move-result v13

    if-ne v14, v13, :cond_0

    goto/16 :goto_2

    .line 43
    :cond_0
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Input %d should have %d bytes, but found %d bytes."

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    .line 44
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmz()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 46
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 47
    invoke-static {v1, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 48
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 49
    invoke-static {v11}, Lcom/google/firebase/ml/custom/FirebaseModelDataType;->zzm(Ljava/lang/Object;)I

    move-result v13

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->getType()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 56
    invoke-static {v11}, Lcom/google/android/gms/internal/firebase_ml/zzps;->zzn(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 57
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v14

    array-length v14, v14

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    .line 63
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 64
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v17

    aget v5, v17, v13

    if-ne v14, v5, :cond_2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p1

    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "The size of %d-th dimension of input %d is %d, but %d is expected."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 66
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    .line 67
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 68
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 69
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v8

    aget v8, v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v5, v9

    .line 70
    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p1

    goto/16 :goto_0

    .line 58
    :cond_4
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Dimension of input %d is %d, but %d is expected."

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    .line 59
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 60
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 61
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v8, v9

    .line 62
    invoke-static {v1, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 51
    :cond_5
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Input %d should be %d type, but found %d type."

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    .line 52
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 54
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v8, v9

    .line 55
    invoke-static {v1, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 73
    :cond_6
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Input %d must be either an array or a ByteBuffer."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 74
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_8

    .line 82
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 83
    iget-object v10, v7, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->resizeInput(I[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 85
    :cond_8
    :try_start_3
    iget-object v1, v7, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    invoke-virtual {v0}, Lcom/google/firebase/ml/custom/FirebaseModelInputs;->zzmu()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzpn;Z)V

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    new-instance v0, Lcom/google/firebase/ml/custom/FirebaseModelOutputs;

    invoke-direct {v0, v8}, Lcom/google/firebase/ml/custom/FirebaseModelOutputs;-><init>(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 88
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Input error:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Output error:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Internal error:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataType error:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaey:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    goto :goto_4

    .line 96
    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafa:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    goto :goto_4

    .line 93
    :cond_a
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaez:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    goto :goto_4

    .line 91
    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaev:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    goto :goto_4

    .line 89
    :cond_c
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaeu:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    :goto_4
    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzpn;Z)V

    .line 98
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    :cond_d
    :try_start_6
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Expected %d inputs but got %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v8, v10

    array-length v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v1, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_6
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    move-exception v0

    .line 78
    :try_start_7
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaeu:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzpn;Z)V

    .line 79
    throw v0

    .line 99
    :cond_e
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzpn;Z)V

    .line 100
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Model has not be loaded yet. Please run load() first"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzpn;Z)V
    .locals 8

    .line 122
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzpv;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpv;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;JLcom/google/android/gms/internal/firebase_ml/zzpn;Lcom/google/android/gms/internal/firebase_ml/zzmc;Z)V

    .line 123
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaid:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v7, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzpx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxs:Lcom/google/android/gms/internal/firebase_ml/zzon;

    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzpw;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpw;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;Lcom/google/android/gms/internal/firebase_ml/zzpx;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zza(Lcom/google/android/gms/internal/firebase_ml/zzoq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static final synthetic zzb(Ljava/nio/MappedByteBuffer;)Lcom/google/android/gms/internal/firebase_ml/zzpz;
    .locals 3

    .line 181
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzpz;

    new-instance v1, Lorg/tensorflow/lite/Interpreter;

    new-instance v2, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v2}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpz;-><init>(Lorg/tensorflow/lite/Interpreter;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getInputIndex(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->getInputIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 117
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Trying to get input index while model has not been initialized yet, or has been released."

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getOutputIndex(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->getOutputIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 120
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Trying to get output index while model has not been initialized yet, or has been released."

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->close()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    .line 114
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zza(JLcom/google/android/gms/internal/firebase_ml/zzpn;Lcom/google/android/gms/internal/firebase_ml/zzmc;Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 6

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 148
    iget-object v2, p3, Lcom/google/android/gms/internal/firebase_ml/zzpn;->zzaxn:Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    invoke-virtual {v2}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzmr()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 149
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 150
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzna()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object p3, p3, Lcom/google/android/gms/internal/firebase_ml/zzpn;->zzaxn:Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    invoke-virtual {p3}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzms()Landroid/util/SparseArray;

    move-result-object p3

    .line 153
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 154
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzna()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzjc()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p3

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzk(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p4

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzp(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p4

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzq(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p4

    .line 162
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzr(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxk:Z

    .line 163
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzs(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p4

    .line 164
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p3

    if-eqz p5, :cond_2

    .line 166
    iget-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    sget-object p5, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object p4

    goto :goto_2

    .line 167
    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    sget-object p5, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {p4, p5}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zza(Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object p4

    .line 168
    :goto_2
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;->zzh(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p3

    .line 169
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 171
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;->zzh(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    move-result-object p1

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxq:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 174
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzns;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 125
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzpn;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzpn;)Lcom/google/firebase/ml/custom/FirebaseModelOutputs;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzpx;JLjava/nio/MappedByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/firebase_ml/zzpx;->zzc(Ljava/nio/MappedByteBuffer;)Lcom/google/android/gms/internal/firebase_ml/zzpz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    .line 178
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 179
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxv:Lcom/google/android/gms/internal/firebase_ml/zzpz;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxk:Z

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzpz;->setUseNNAPI(Z)V

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzf(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 3

    .line 126
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzjg()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;->zzi(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxk:Z

    .line 131
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;->zzj(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    if-eqz v0, :cond_1

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 134
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;->zzi(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    if-eqz v0, :cond_2

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zza(Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;->zzj(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    .line 140
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzg(Ljava/util/List;)V
    .locals 2

    .line 183
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzpy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpy;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;Ljava/util/List;)V

    .line 184
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaig:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method

.method public final zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized zzln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpt;->zzaxw:Lcom/google/android/gms/internal/firebase_ml/zzpx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzpx;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxs:Lcom/google/android/gms/internal/firebase_ml/zzon;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzlw()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
