.class public final Lcom/google/android/gms/internal/wearable/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method public static zza(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    const-string p0, "asset"

    const-string v1, ".tmp"

    .line 3
    invoke-static {p0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x2800

    :try_start_2
    new-array p1, p1, [B

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v2, :cond_0

    .line 7
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 6
    :try_start_4
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    .line 13
    :goto_1
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7
    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 12
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzj;->zzb(Ljava/io/Closeable;)V

    .line 13
    throw p0
.end method

.method private static zzb(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
