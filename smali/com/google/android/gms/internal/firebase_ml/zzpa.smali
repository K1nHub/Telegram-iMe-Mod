.class public final Lcom/google/android/gms/internal/firebase_ml/zzpa;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

.field private final zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;I)V
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object p4

    if-nez p3, :cond_0

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzjs()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zze(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzav(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzk(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzail:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 19
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void

    .line 21
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzf(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "ModelDownloadLogger"

    const-string p5, "Model downloaded without its beginning time recorded."

    invoke-virtual {p1, p3, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p3

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzjs()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p3

    sget-object p5, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 28
    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zze(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p3

    .line 29
    invoke-virtual {p3, p6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzav(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p3

    .line 30
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzk(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p3

    .line 31
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzail:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzg(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;)J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-nez p3, :cond_2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 37
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    invoke-virtual {p3, p5, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;J)V

    :cond_2
    sub-long/2addr v4, v0

    .line 39
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p5

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzjs()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p5

    .line 43
    invoke-virtual {p5, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzm(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p5

    .line 44
    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzav(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p5

    .line 45
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zze(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;->zzk(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzail:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 48
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;I)V
    .locals 7

    .line 56
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzaut:Lcom/google/android/gms/internal/firebase_ml/zzor;

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v2, "NA"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 7

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalp:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V
    .locals 7

    const-string v2, "NA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;I)V

    return-void
.end method

.method public final zza(ZLcom/google/android/gms/internal/firebase_ml/zzor;I)V
    .locals 7

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafg:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzalx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;

    const-string v2, "NA"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase_ml/zzor;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;I)V

    return-void
.end method

.method final zzh(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzpa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;I)V

    return-void
.end method
