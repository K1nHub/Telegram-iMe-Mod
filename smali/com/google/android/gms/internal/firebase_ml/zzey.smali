.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzff;


# instance fields
.field private zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

.field private zztg:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzfl;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztg:J

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfl;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzey;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfl;)V

    return-void
.end method


# virtual methods
.method public final getLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztg:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzhq;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzic;)J

    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztg:J

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztg:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzep()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzen()Ljava/nio/charset/Charset;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzfb()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzey;->zztf:Lcom/google/android/gms/internal/firebase_ml/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzfb()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhe;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final zzeo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
