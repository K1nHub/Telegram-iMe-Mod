.class final Lcom/google/android/gms/internal/firebase_ml/zzxo;
.super Lcom/google/android/gms/internal/firebase_ml/zzxm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
        "Lcom/google/android/gms/internal/firebase_ml/zzxp;",
        "Lcom/google/android/gms/internal/firebase_ml/zzxp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzxm;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxp;)V
    .locals 0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    shl-int/lit8 p2, p2, 0x3

    .line 42
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_ml/zztn;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void
.end method

.method final synthetic zzaa(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzre()I

    move-result p1

    return p1
.end method

.method final synthetic zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    return-object p1
.end method

.method final synthetic zzaf(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztp()I

    move-result p1

    return p1
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxo;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxp;)V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 26
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxo;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzxp;)V

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztn()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 17
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxp;Lcom/google/android/gms/internal/firebase_ml/zzxp;)Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object p1

    return-object p1
.end method

.method final zzq(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzqa()V

    return-void
.end method

.method final synthetic zztm()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzto()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v0

    return-object v0
.end method
