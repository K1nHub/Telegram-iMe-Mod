.class public final Lcom/google/android/gms/internal/firebase_ml/zzpo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzot;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "CustomCompatChecker"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpo;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;Lcom/google/android/gms/internal/firebase_ml/zzpa;)Lcom/google/android/gms/internal/firebase_ml/zzow;
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavh:Lcom/google/android/gms/internal/firebase_ml/zzow;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "The model is INCOMPATIBLE. It may contain unrecognized custom ops, or not FlatBuffer format: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpo;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "CustomCompatChecker"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaew:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 7
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->version()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 8
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;)V

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzow;

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzave:Lcom/google/android/gms/internal/firebase_ml/zzov;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzow;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzov;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    .line 12
    :goto_0
    throw p1
.end method
