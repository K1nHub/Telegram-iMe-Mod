.class public final Lcom/google/android/gms/internal/firebase_ml/zzeo;
.super Lcom/google/android/gms/internal/firebase_ml/zzfo;


# instance fields
.field private final transient zzsd:Lcom/google/android/gms/internal/firebase_ml/zzem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzfr;Lcom/google/android/gms/internal/firebase_ml/zzem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfo;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfr;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzeo;->zzsd:Lcom/google/android/gms/internal/firebase_ml/zzem;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase_ml/zzgj;Lcom/google/android/gms/internal/firebase_ml/zzfp;)Lcom/google/android/gms/internal/firebase_ml/zzeo;
    .locals 5

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfr;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzfj;)V

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfc()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "application/json; charset=UTF-8"

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContent()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v2, :cond_7

    .line 15
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->zza(Ljava/io/InputStream;)Lcom/google/android/gms/internal/firebase_ml/zzgn;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v2

    if-nez v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzfz()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    const-string v2, "error"

    .line 21
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/util/Set;)Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwk:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v2, v3, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zzga()Lcom/google/android/gms/internal/firebase_ml/zzgp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzgp;->zzwh:Lcom/google/android/gms/internal/firebase_ml/zzgp;

    if-ne v2, v3, :cond_2

    .line 25
    const-class v2, Lcom/google/android/gms/internal/firebase_ml/zzem;

    .line 26
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzgh;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzem;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzfp()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v1, :cond_8

    .line 32
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object p0, v1

    move-object v3, p0

    goto :goto_2

    :catch_3
    move-exception v2

    move-object p0, v1

    move-object v3, p0

    .line 33
    :goto_1
    :try_start_5
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zzb(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez p0, :cond_3

    .line 35
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V

    goto :goto_6

    :cond_3
    if-nez v3, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    goto :goto_6

    :cond_4
    move-object v2, v1

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v2

    :goto_2
    if-eqz p0, :cond_5

    if-nez v3, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgn;->close()V

    goto :goto_3

    .line 39
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V

    .line 41
    :cond_6
    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    .line 43
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfd()Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v3, v1

    move-object v1, p0

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v2, v1

    .line 45
    :goto_4
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zzb(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    move-object v3, v1

    move-object v1, v2

    .line 46
    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfo;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzfp;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzay(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 50
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfr;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfr;

    .line 52
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzfr;->zzae(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfr;

    .line 53
    new-instance p0, Lcom/google/android/gms/internal/firebase_ml/zzeo;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/firebase_ml/zzeo;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfr;Lcom/google/android/gms/internal/firebase_ml/zzem;)V

    return-object p0
.end method


# virtual methods
.method public final zzeb()Lcom/google/android/gms/internal/firebase_ml/zzem;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzeo;->zzsd:Lcom/google/android/gms/internal/firebase_ml/zzem;

    return-object v0
.end method
