.class public final Lcom/google/android/gms/internal/firebase_ml/zzod;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzoo;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final zzauc:Ljava/lang/String;

.field private zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "AutoMLModelFileManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzauc:Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzom;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzom;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    return-void
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzom;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzom;-><init>(Lcom/google/firebase/FirebaseApp;)V

    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 46
    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Ljava/io/File;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/16 v0, 0xd

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    .line 49
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Failed to delete the temp labels file: "

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 52
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Temp labels folder does not exist, creating one: "

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    const-string v2, "AutoMLModelFileManager"

    .line 54
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 56
    :cond_3
    new-instance p0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p1, "Failed to create a directory to hold the AutoML model\'s labels file."

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 57
    :cond_4
    :goto_2
    new-instance p1, Ljava/io/File;

    const-string v0, "labels.txt"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 41
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzof;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzof;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Ljava/io/File;Lcom/google/android/gms/internal/firebase_ml/zzoi;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 44
    new-instance p2, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Failed to write labels file for the AutoML model: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0xd

    invoke-direct {p2, p1, v0, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method private static zza(Ljava/io/File;Lcom/google/android/gms/internal/firebase_ml/zzoi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    .line 59
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoi;->zza(Ljava/io/BufferedWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 64
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method static final synthetic zza(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/util/List;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzauc:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzb(Ljava/io/File;)I

    move-result v1

    .line 9
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/io/File;

    const-string v1, "model.tflite"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzauc:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 16
    new-instance v5, Ljava/io/File;

    const-string v6, "labels.txt"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    const-string v8, "AutoMLModelFileManager"

    if-eqz v7, :cond_2

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "Rename to serving model successfully"

    invoke-virtual {p1, v8, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Ljava/io/File;->setExecutable(Z)Z

    .line 20
    invoke-virtual {v0, p1}, Ljava/io/File;->setWritable(Z)Z

    .line 21
    invoke-virtual {v5, p1}, Ljava/io/File;->setExecutable(Z)Z

    .line 22
    invoke-virtual {v5, p1}, Ljava/io/File;->setWritable(Z)Z

    .line 24
    new-instance v4, Ljava/io/File;

    const-string v5, "manifest.json"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "IMAGE_LABELING"

    aput-object v5, v2, p1

    aput-object v1, v2, v3

    const/4 p1, 0x2

    aput-object v6, v2, p1

    const-string/jumbo p1, "{\n\t\"modelType\": \"%s\",\n\t\"modelFile\": \"%s\",\n\t\"labelsFile\": \"%s\"\n}"

    .line 26
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzog;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzog;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Ljava/io/File;Lcom/google/android/gms/internal/firebase_ml/zzoi;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Failed to write manifest json for the AutoML model: "

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzauc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 32
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzod;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Rename to serving model failed, remove the temp file."

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Failed to delete the temp model file: "

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_1
    invoke-virtual {v0, v8, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Failed to delete the temp labels file: "

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    invoke-virtual {v0, v8, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
