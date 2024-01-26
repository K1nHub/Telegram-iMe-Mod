.class public final Lcom/google/android/gms/internal/firebase_ml/zzqn;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzbbj:Lcom/google/android/gms/internal/firebase_ml/zzqn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzqn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzbbj:Lcom/google/android/gms/internal/firebase_ml/zzqn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzb(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 24
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 26
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 27
    invoke-virtual {v0, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 15
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 17
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 18
    invoke-virtual {v0, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 22
    :pswitch_4
    invoke-virtual {v0, v8, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :pswitch_5
    const/high16 p0, 0x43340000    # 180.0f

    .line 20
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 12
    :pswitch_6
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    invoke-virtual {p0, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v5, p0

    :goto_1
    :pswitch_7
    if-eqz v5, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    .line 31
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq v7, p0, :cond_0

    .line 33
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p0

    :cond_0
    return-object v7

    :catch_0
    move-exception p0

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Could not open file: "

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "MLKitImageUtils"

    invoke-virtual {v0, v1, p1, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzb(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 5

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 47
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz p0, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-static {v2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 51
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "failed to open file to read rotation meta data: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MLKitImageUtils"

    invoke-virtual {v2, v3, p1, p0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    const-string p1, "Orientation"

    .line 54
    invoke-virtual {v2, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static zznn()Lcom/google/android/gms/internal/firebase_ml/zzqn;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqn;->zzbbj:Lcom/google/android/gms/internal/firebase_ml/zzqn;

    return-object v0
.end method
