.class public Lcom/google/android/gms/internal/firebase_ml/zzoj;
.super Ljava/lang/Object;


# instance fields
.field private zzaug:Ljava/nio/MappedByteBuffer;

.field private final zzauh:Landroid/content/Context;

.field private final zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzauh:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    return-void
.end method


# virtual methods
.method public load()Ljava/nio/MappedByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzauh:Landroid/content/Context;

    const-string v1, "Context can not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    const-string v1, "Model source can not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaug:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    invoke-virtual {v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-eqz v0, :cond_2

    .line 10
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    invoke-virtual {v2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 12
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaug:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    new-instance v2, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v3, "Can not open the local file: "

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    .line 16
    invoke-virtual {v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-direct {v2, v3, v1, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    invoke-virtual {v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    invoke-virtual {v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzauh:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 23
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    .line 24
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v9

    .line 25
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaug:Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v2

    .line 28
    new-instance v3, Lcom/google/firebase/ml/common/FirebaseMLException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0xba

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Can not load the file from asset: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Please double check your asset file name and ensure it\'s not compressed. See documentation for details how to use aaptOptions to skip file compression"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 30
    :cond_3
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v2, "Can not load the model. Either filePath or assetFilePath must be set for the model."

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final zzlv()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    return-object v0
.end method
