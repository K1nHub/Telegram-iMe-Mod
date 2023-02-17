.class public final Lcom/google/android/gms/internal/firebase_ml/zzfp;
.super Ljava/lang/Object;


# instance fields
.field private final statusCode:I

.field private final zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

.field private zztw:I

.field private zztx:Z

.field private final zzuq:Ljava/lang/String;

.field private zzur:Ljava/io/InputStream;

.field private final zzus:Ljava/lang/String;

.field private final zzut:Ljava/lang/String;

.field private zzuu:Lcom/google/android/gms/internal/firebase_ml/zzfv;

.field private final zzuv:Lcom/google/android/gms/internal/firebase_ml/zzfk;

.field private zzuw:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzfk;Lcom/google/android/gms/internal/firebase_ml/zzfv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuv:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzet()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztw:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzeu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztx:Z

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuu:Lcom/google/android/gms/internal/firebase_ml/zzfv;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzus:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->statusCode:I

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuq:Ljava/lang/String;

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzuz:Ljava/util/logging/Logger;

    .line 12
    iget-boolean v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztx:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------- RESPONSE --------------"

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->zzfh()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const/16 v0, 0x20

    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 24
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzew()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v0

    if-eqz v1, :cond_5

    move-object v2, v5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfv;Ljava/lang/StringBuilder;)V

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getContentType()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzew()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzut:Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_3

    .line 29
    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/firebase_ml/zzfl;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/firebase_ml/zzfl;-><init>(Ljava/lang/String;)V

    :goto_3
    iput-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    if-eqz v1, :cond_8

    .line 31
    sget-object p1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.api.client.http.HttpResponse"

    const-string v1, "<init>"

    invoke-virtual {v3, p1, v0, v1, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private final zzfe()Ljava/nio/charset/Charset;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzfb()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzfb()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhe;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuu:Lcom/google/android/gms/internal/firebase_ml/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->disconnect()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuw:Z

    if-nez v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuu:Lcom/google/android/gms/internal/firebase_ml/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzus:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "gzip"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 47
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzuz:Ljava/util/logging/Logger;

    .line 48
    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztx:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzhu;

    iget v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zztw:I

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase_ml/zzhu;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v3

    .line 50
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzur:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    .line 53
    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuw:Z

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzur:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuq:Ljava/lang/String;

    return-object v0
.end method

.method public final ignore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->statusCode:I

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuv:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    div-int/lit8 v1, v0, 0x64

    if-eq v1, v2, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V

    const/4 v2, 0x0

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuv:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzey()Lcom/google/android/gms/internal/firebase_ml/zzhy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfe()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhy;->zza(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzuv:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzew()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v0

    return-object v0
.end method

.method public final zzfc()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfp;->statusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfd()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 81
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 90
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfe()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
