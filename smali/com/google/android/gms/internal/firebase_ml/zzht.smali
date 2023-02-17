.class public final Lcom/google/android/gms/internal/firebase_ml/zzht;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzhr;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzhr;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhr;->close()V

    .line 11
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhr;->write(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzhr;->write([BII)V

    return-void
.end method

.method public final zzhb()Lcom/google/android/gms/internal/firebase_ml/zzhr;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzzv:Lcom/google/android/gms/internal/firebase_ml/zzhr;

    return-object v0
.end method
