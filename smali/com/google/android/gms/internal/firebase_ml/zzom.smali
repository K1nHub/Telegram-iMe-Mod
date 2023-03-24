.class public final Lcom/google/android/gms/internal/firebase_ml/zzom;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzauk:Ljava/lang/String;

.field private static final zzaul:Ljava/lang/String;

.field private static final zzaum:Ljava/lang/String;

.field private static final zzaun:Ljava/lang/String;

.field private static final zzauo:Ljava/lang/String;


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelFileHelper"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "com.google.firebase.ml.%s.models"

    .line 74
    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauk:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "custom"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaul:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauk:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "automl"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaum:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauk:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "base"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaun:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauk:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "translate"

    aput-object v2, v1, v4

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzom;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "model folder does not exist, creating one: "

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :goto_0
    const-string v0, "ModelFileHelper"

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_1
    return-object p1

    .line 30
    :cond_2
    new-instance p2, Lcom/google/firebase/ml/common/FirebaseMLException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Can not create model folder, since an existing file has the same name: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method static zzb(Ljava/io/File;)I
    .locals 7

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 54
    array-length v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 58
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    :catch_0
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v5, "Contains non-integer file name "

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v5, "ModelFileHelper"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    if-eq p2, v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzom;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzod;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzc(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "Failed to delete the temp labels file directory: "

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "ModelFileHelper"

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;
    .locals 2

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzol;->zzauj:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 39
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzauo:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unknown model type "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Cannot find a dir to store the downloaded model."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaum:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaun:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzaul:Ljava/lang/String;

    .line 43
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzom;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzom;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    :goto_1
    if-eqz p3, :cond_5

    .line 49
    new-instance p2, Ljava/io/File;

    const-string p3, "temp"

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p2

    .line 50
    :cond_5
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzom;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzb(Ljava/io/File;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    move v5, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzc(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v2

    :cond_3
    if-eqz v5, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
