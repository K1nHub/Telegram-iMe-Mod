.class public Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;
.super Lcom/google/android/gms/internal/firebase_ml/zztf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzuu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_ml/zztf<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzbss:Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzbsu:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zztf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbss:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 3
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbsz:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbss:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 48
    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbta:I

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zztg;)Lcom/google/android/gms/internal/firebase_ml/zztf;
    .locals 0

    .line 35
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrm()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-object p0
.end method

.method public final synthetic zzpw()Lcom/google/android/gms/internal/firebase_ml/zztf;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zztf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    return-object v0
.end method

.method public final synthetic zzrk()Lcom/google/android/gms/internal/firebase_ml/zzwe;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbss:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    return-object v0
.end method

.method protected zzrm()V
    .locals 3

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbsz:I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    :cond_0
    return-void
.end method

.method public zzrn()Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzqa()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbsu:Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzbst:Lcom/google/android/gms/internal/firebase_ml/zzuu;

    return-object v0
.end method

.method public final zzro()Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzxn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzxn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwe;)V

    .line 28
    throw v1
.end method

.method public synthetic zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrn()Lcom/google/android/gms/internal/firebase_ml/zzuu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzro()Lcom/google/android/gms/internal/firebase_ml/zzuu;

    move-result-object v0

    return-object v0
.end method
