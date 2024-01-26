.class public Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# instance fields
.field final zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

.field zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

.field zzsg:Lcom/google/android/gms/internal/firebase_ml/zzfm;

.field final zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

.field zzsi:Ljava/lang/String;

.field zzsj:Ljava/lang/String;

.field zzsk:Ljava/lang/String;

.field zzsl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzft;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzhy;Lcom/google/android/gms/internal/firebase_ml/zzfm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzft;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;

    .line 7
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsg:Lcom/google/android/gms/internal/firebase_ml/zzfm;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/firebase_ml/zzev;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

    return-object p0
.end method

.method public zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsi:Ljava/lang/String;

    return-object p0
.end method

.method public zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsj:Ljava/lang/String;

    return-object p0
.end method

.method public zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsk:Ljava/lang/String;

    return-object p0
.end method

.method public zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsl:Ljava/lang/String;

    return-object p0
.end method
