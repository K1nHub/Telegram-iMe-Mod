.class public final Lcom/google/android/gms/internal/firebase_ml/zzfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzfe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "gzip"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzic;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfd;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzfd;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfa;Ljava/io/OutputStream;)V

    .line 4
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzic;->writeTo(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method
