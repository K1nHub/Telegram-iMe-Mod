.class public final Lcom/google/android/gms/internal/firebase_ml/zzen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzfg;
.implements Lcom/google/android/gms/internal/firebase_ml/zzfm;


# instance fields
.field private final zzsc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzen;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzen;->zzsc:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfk;)V
    .locals 0

    .line 6
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfg;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase_ml/zzfk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "GET"

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzer()Lcom/google/android/gms/internal/firebase_ml/zzfc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzfc;->zzep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x800

    if-le v2, v5, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzeq()Lcom/google/android/gms/internal/firebase_ml/zzft;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzer()Lcom/google/android/gms/internal/firebase_ml/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzfc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzer()Lcom/google/android/gms/internal/firebase_ml/zzfc;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    return-void

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzes()Lcom/google/android/gms/internal/firebase_ml/zzff;

    move-result-object v0

    if-nez v0, :cond_3

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfb;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    :cond_3
    return-void
.end method
