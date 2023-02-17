.class public final Lcom/google/android/gms/internal/firebase_ml/zzhq;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/firebase_ml/zzic;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhf;-><init>()V

    .line 2
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzic;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    iget-wide v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzhf;->zzyc:J

    return-wide v0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
.end method
