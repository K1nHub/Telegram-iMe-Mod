.class public final Lcom/google/android/gms/internal/firebase_ml/zzfr;
.super Ljava/lang/Object;


# instance fields
.field content:Ljava/lang/String;

.field message:Ljava/lang/String;

.field statusCode:I

.field zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

.field zzuq:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzfj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->statusCode:I

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->zzuq:Ljava/lang/String;

    .line 10
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzfj;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzfj;)V

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->content:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zzb(Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfo;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzfp;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzae(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfr;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfr;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfr;->content:Ljava/lang/String;

    return-object p0
.end method
