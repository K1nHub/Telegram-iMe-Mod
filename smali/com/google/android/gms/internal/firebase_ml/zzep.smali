.class public Lcom/google/android/gms/internal/firebase_ml/zzep;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzep$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

.field private final zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

.field private final zzsi:Ljava/lang/String;

.field private final zzsj:Ljava/lang/String;

.field private final zzsk:Ljava/lang/String;

.field private final zzsl:Ljava/lang/String;

.field private final zzsm:Lcom/google/android/gms/internal/firebase_ml/zzfn;

.field private final zzsn:Z

.field private final zzso:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzep;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzep;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzep$zza;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsi:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsj:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsk:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsl:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzep;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.api.client.googleapis.services.AbstractGoogleClient"

    const-string v3, "<init>"

    const-string v4, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsl:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsg:Lcom/google/android/gms/internal/firebase_ml/zzfm;

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzft;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfm;)Lcom/google/android/gms/internal/firebase_ml/zzfn;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzft;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfm;)Lcom/google/android/gms/internal/firebase_ml/zzfn;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsm:Lcom/google/android/gms/internal/firebase_ml/zzfn;

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzep$zza;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsn:Z

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzso:Z

    return-void
.end method

.method static zzj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "root URL cannot be null."

    .line 32
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static zzk(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "service path cannot be null"

    .line 37
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "service path must equal \"/\" if it is of length 1."

    .line 42
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    const-string p0, ""

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/firebase_ml/zzer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzer<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsf:Lcom/google/android/gms/internal/firebase_ml/zzev;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzev;->zza(Lcom/google/android/gms/internal/firebase_ml/zzer;)V

    :cond_0
    return-void
.end method

.method public final zzec()Ljava/lang/String;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsi:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsj:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzed()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzee()Lcom/google/android/gms/internal/firebase_ml/zzfn;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsm:Lcom/google/android/gms/internal/firebase_ml/zzfn;

    return-object v0
.end method

.method public zzef()Lcom/google/android/gms/internal/firebase_ml/zzhy;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzsh:Lcom/google/android/gms/internal/firebase_ml/zzhy;

    return-object v0
.end method
