.class public final Lcom/google/android/gms/internal/firebase_ml/zzfk;
.super Ljava/lang/Object;


# instance fields
.field private final zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

.field private zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

.field private zzst:Ljava/lang/String;

.field private zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

.field private zzts:Lcom/google/android/gms/internal/firebase_ml/zzfg;

.field private zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

.field private zztu:Lcom/google/android/gms/internal/firebase_ml/zzfj;

.field private zztv:I

.field private zztw:I

.field private zztx:Z

.field private zzty:Z

.field private zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

.field private zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

.field private zzub:I

.field private zzuc:I

.field private zzud:Lcom/google/android/gms/internal/firebase_ml/zzfq;

.field private zzue:Z

.field private zzuf:Z

.field private zzug:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzuh:Lcom/google/android/gms/internal/firebase_ml/zzia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzft;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztu:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    const/16 p2, 0xa

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztv:I

    const/16 p2, 0x4000

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztw:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztx:Z

    .line 7
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzty:Z

    const/16 v0, 0x4e20

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzub:I

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuc:I

    .line 10
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzue:Z

    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuf:Z

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzug:Z

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzia;->zzzw:Lcom/google/android/gms/internal/firebase_ml/zzia;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuh:Lcom/google/android/gms/internal/firebase_ml/zzia;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    return-void
.end method


# virtual methods
.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfc;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzfc;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfe;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfg;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzts:Lcom/google/android/gms/internal/firebase_ml/zzfg;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfq;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzud:Lcom/google/android/gms/internal/firebase_ml/zzfq;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzhy;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    return-object p0
.end method

.method public final zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 1

    if-eqz p1, :cond_1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfl;->zzad(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    return-object p0
.end method

.method public final zzeq()Lcom/google/android/gms/internal/firebase_ml/zzft;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    return-object v0
.end method

.method public final zzer()Lcom/google/android/gms/internal/firebase_ml/zzfc;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

    return-object v0
.end method

.method public final zzes()Lcom/google/android/gms/internal/firebase_ml/zzff;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    return-object v0
.end method

.method public final zzet()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztw:I

    return v0
.end method

.method public final zzeu()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztx:Z

    return v0
.end method

.method public final zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    return-object v0
.end method

.method public final zzew()Lcom/google/android/gms/internal/firebase_ml/zzfj;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztu:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    return-object v0
.end method

.method public final zzex()Lcom/google/android/gms/internal/firebase_ml/zzfq;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzud:Lcom/google/android/gms/internal/firebase_ml/zzfq;

    return-object v0
.end method

.method public final zzey()Lcom/google/android/gms/internal/firebase_ml/zzhy;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    return-object v0
.end method

.method public final zzez()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuf:Z

    return v0
.end method

.method public final zzfa()Lcom/google/android/gms/internal/firebase_ml/zzfp;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 54
    iget v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztv:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    .line 56
    iget v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztv:I

    .line 58
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    .line 59
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

    .line 61
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V

    .line 65
    :cond_1
    iget-object v5, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzts:Lcom/google/android/gms/internal/firebase_ml/zzfg;

    if-eqz v5, :cond_2

    .line 66
    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfg;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzfk;)V

    .line 67
    :cond_2
    iget-object v5, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfc;->zzep()Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v6, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfs;

    move-result-object v6

    .line 69
    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzuz:Ljava/util/logging/Logger;

    .line 70
    iget-boolean v8, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztx:Z

    if-eqz v8, :cond_3

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const-string v9, "GET"

    if-eqz v8, :cond_4

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-------------- REQUEST  --------------"

    .line 75
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    .line 77
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v11, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzty:Z

    if-eqz v11, :cond_5

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "curl -v --compressed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, " -X "

    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzst:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :cond_5
    const/4 v11, 0x0

    .line 82
    :cond_6
    :goto_3
    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->getUserAgent()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    .line 84
    iget-object v13, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    const-string v14, "Google-HTTP-Java-Client/1.26.0-SNAPSHOT (gzip)"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    goto :goto_4

    .line 85
    :cond_7
    iget-object v13, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " Google-HTTP-Java-Client/1.26.0-SNAPSHOT (gzip)"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 86
    :goto_4
    iget-object v13, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-static {v13, v10, v11, v7, v6}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfj;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/android/gms/internal/firebase_ml/zzfs;)V

    .line 87
    iget-object v13, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 88
    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    if-eqz v12, :cond_8

    .line 89
    invoke-interface {v12}, Lcom/google/android/gms/internal/firebase_ml/zzff;->zzeo()Z

    :cond_8
    const-string v13, "\'"

    if-eqz v12, :cond_13

    .line 91
    iget-object v14, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    invoke-interface {v14}, Lcom/google/android/gms/internal/firebase_ml/zzff;->getType()Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_9

    .line 93
    new-instance v15, Lcom/google/android/gms/internal/firebase_ml/zzhw;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztw:I

    invoke-direct {v15, v12, v7, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzhw;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzic;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v12, v15

    .line 94
    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

    if-nez v2, :cond_a

    .line 96
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzff;->getLength()J

    move-result-wide v2

    move-object v15, v12

    const/4 v12, 0x0

    goto :goto_5

    .line 97
    :cond_a
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzfe;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzfh;

    iget-object v15, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

    invoke-direct {v3, v12, v15}, Lcom/google/android/gms/internal/firebase_ml/zzfh;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzic;Lcom/google/android/gms/internal/firebase_ml/zzfe;)V

    .line 99
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzhq;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzic;)J

    move-result-wide v16

    move-object v12, v2

    move-object v15, v3

    move-wide/from16 v2, v16

    :goto_5
    if-eqz v8, :cond_10

    const-string v4, " -H \'"

    if-eqz v14, :cond_d

    move-object/from16 v17, v9

    const-string v9, "Content-Type: "

    .line 102
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v9, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 103
    :goto_6
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_c

    .line 105
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    move/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    move/from16 v18, v0

    goto :goto_7

    :cond_d
    move/from16 v18, v0

    move-object/from16 v17, v9

    :goto_7
    if-eqz v12, :cond_f

    const-string v0, "Content-Encoding: "

    .line 107
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 108
    :goto_8
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_f

    .line 110
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_11

    const/16 v0, 0x24

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content-Length: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_10
    move/from16 v18, v0

    move-object/from16 v17, v9

    :cond_11
    :goto_9
    if-eqz v11, :cond_12

    const-string v0, " -d \'@-\'"

    .line 115
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_12
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->setContentType(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->setContentEncoding(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->setContentLength(J)V

    .line 119
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zza(Lcom/google/android/gms/internal/firebase_ml/zzic;)V

    move-object v12, v15

    goto :goto_a

    :cond_13
    move/from16 v18, v0

    move-object/from16 v17, v9

    :goto_a
    if-eqz v8, :cond_15

    .line 121
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.api.client.http.HttpRequest"

    const-string v3, "execute"

    invoke-virtual {v7, v0, v2, v3, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_15

    const-string v1, " -- \'"

    .line 123
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\"\'\"\'"

    .line 124
    invoke-virtual {v5, v13, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_14

    const-string v1, " << $$$"

    .line 127
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_14
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v2, v3, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-lez v18, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    :goto_b
    move-object/from16 v1, p0

    .line 130
    iget v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzub:I

    iget v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuc:I

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzb(II)V

    .line 131
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase_ml/zzfs;->zzfg()Lcom/google/android/gms/internal/firebase_ml/zzfv;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzfp;

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfp;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfk;Lcom/google/android/gms/internal/firebase_ml/zzfv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 142
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfc()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 145
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-boolean v4, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzue:Z

    if-eqz v4, :cond_19

    const/16 v4, 0x133

    if-eq v2, v4, :cond_17

    packed-switch v2, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_c

    :cond_17
    :pswitch_0
    const/4 v4, 0x1

    :goto_c
    if-eqz v4, :cond_19

    if-eqz v3, :cond_19

    .line 154
    new-instance v4, Lcom/google/android/gms/internal/firebase_ml/zzfc;

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzua:Lcom/google/android/gms/internal/firebase_ml/zzfc;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfc;->zzr(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/firebase_ml/zzfc;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfc;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_18

    move-object/from16 v2, v17

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    const/4 v2, 0x0

    .line 158
    iput-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztz:Lcom/google/android/gms/internal/firebase_ml/zzff;

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    .line 159
    :goto_d
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 160
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 161
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 162
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 163
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 164
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zztt:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    const/4 v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    and-int/2addr v0, v3

    if-eqz v0, :cond_1b

    .line 171
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->ignore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_1b
    :goto_f
    add-int/lit8 v3, v18, -0x1

    if-nez v0, :cond_1f

    .line 179
    iget-object v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzud:Lcom/google/android/gms/internal/firebase_ml/zzfq;

    if-eqz v0, :cond_1c

    .line 180
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzfq;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V

    .line 181
    :cond_1c
    iget-boolean v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuf:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfc()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_10

    .line 182
    :cond_1d
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfo;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_ml/zzfo;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 183
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->disconnect()V

    throw v0

    :cond_1e
    :goto_10
    return-object v5

    :cond_1f
    move v0, v3

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    .line 177
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->disconnect()V

    throw v0

    :catchall_2
    move-exception v0

    .line 135
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzfv;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 137
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_20
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 140
    throw v0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzw(I)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    const/4 p1, 0x1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    const/16 p1, 0x1388

    .line 37
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzub:I

    return-object p0
.end method

.method public final zzx(I)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 0

    const/4 p1, 0x1

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    const/16 p1, 0x2710

    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzuc:I

    return-object p0
.end method
