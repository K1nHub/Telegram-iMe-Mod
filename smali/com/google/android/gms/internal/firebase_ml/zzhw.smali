.class public final Lcom/google/android/gms/internal/firebase_ml/zzhw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzic;


# instance fields
.field private final logger:Ljava/util/logging/Logger;

.field private final zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

.field private final zztw:I

.field private final zzzu:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzic;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->logger:Ljava/util/logging/Logger;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zzzu:Ljava/util/logging/Level;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zztw:I

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzht;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zzzu:Ljava/util/logging/Level;

    iget v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zztw:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzht;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhw;->zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzic;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzhb()Lcom/google/android/gms/internal/firebase_ml/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhr;->close()V

    .line 12
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzht;->zzhb()Lcom/google/android/gms/internal/firebase_ml/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhr;->close()V

    throw p1
.end method
