.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzfs;
.super Ljava/lang/Object;


# instance fields
.field private zzus:Ljava/lang/String;

.field private zzut:Ljava/lang/String;

.field private zzux:J

.field private zzuy:Lcom/google/android/gms/internal/firebase_ml/zzic;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzux:J

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzus:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzux:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzus:Ljava/lang/String;

    return-void
.end method

.method public final setContentLength(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzux:J

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzut:Ljava/lang/String;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzuy:Lcom/google/android/gms/internal/firebase_ml/zzic;

    return-void
.end method

.method public zzb(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zzff()Lcom/google/android/gms/internal/firebase_ml/zzic;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzuy:Lcom/google/android/gms/internal/firebase_ml/zzic;

    return-object v0
.end method

.method public abstract zzfg()Lcom/google/android/gms/internal/firebase_ml/zzfv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
