.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzrd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzbdy:J

.field private final zzbdz:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzbea:Lcom/google/android/gms/internal/firebase_ml/zzqp;


# direct methods
.method constructor <init>(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbdy:J

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbdz:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbea:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbdy:J

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbdz:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzrd;->zzbea:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak;->zzkz()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzk(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    sget-boolean v2, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzazs:Z

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzp(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzq(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzr(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;->zzh(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;

    move-result-object v0

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzqm;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;->zzg(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
