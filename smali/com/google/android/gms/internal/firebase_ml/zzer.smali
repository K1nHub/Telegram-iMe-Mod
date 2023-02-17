.class public Lcom/google/android/gms/internal/firebase_ml/zzer;
.super Lcom/google/android/gms/internal/firebase_ml/zzho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_ml/zzho;"
    }
.end annotation


# instance fields
.field private final zzss:Lcom/google/android/gms/internal/firebase_ml/zzep;

.field private final zzst:Ljava/lang/String;

.field private final zzsu:Ljava/lang/String;

.field private final zzsv:Lcom/google/android/gms/internal/firebase_ml/zzff;

.field private zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

.field private zzsx:Lcom/google/android/gms/internal/firebase_ml/zzfj;

.field private zzsy:I

.field private zzsz:Ljava/lang/String;

.field private zzta:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzep;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzff;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzep;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzff;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsy:I

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 6
    check-cast p5, Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzta:Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 9
    check-cast p5, Lcom/google/android/gms/internal/firebase_ml/zzep;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzss:Lcom/google/android/gms/internal/firebase_ml/zzep;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzst:Ljava/lang/String;

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsu:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsv:Lcom/google/android/gms/internal/firebase_ml/zzff;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzed()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x17

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Google-API-Java-Client"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    const-string p3, "Google-API-Java-Client"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzfj;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 21
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzet;->zzek()Lcom/google/android/gms/internal/firebase_ml/zzet;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase_ml/zzet;->zzl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "X-Goog-Api-Client"

    .line 23
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    return-void
.end method


# virtual methods
.method public synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;

    move-result-object p1

    return-object p1
.end method

.method protected zzb(Lcom/google/android/gms/internal/firebase_ml/zzfp;)Ljava/io/IOException;
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfo;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V

    return-object v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzer<",
            "TT;>;"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzer;

    return-object p1
.end method

.method public zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzss:Lcom/google/android/gms/internal/firebase_ml/zzep;

    return-object v0
.end method

.method public final zzeh()Lcom/google/android/gms/internal/firebase_ml/zzfj;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    return-object v0
.end method

.method public final zzei()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzst:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzee()Lcom/google/android/gms/internal/firebase_ml/zzfn;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzfc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzss:Lcom/google/android/gms/internal/firebase_ml/zzep;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzec()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsu:Ljava/lang/String;

    invoke-static {v4, v5, p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzfc;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsv:Lcom/google/android/gms/internal/firebase_ml/zzff;

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzfn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzfc;Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzen;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_ml/zzen;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzen;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzfk;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzef()Lcom/google/android/gms/internal/firebase_ml/zzhy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzhy;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsv:Lcom/google/android/gms/internal/firebase_ml/zzff;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzst:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzst:Ljava/lang/String;

    const-string v2, "PUT"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzst:Ljava/lang/String;

    const-string v2, "PATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzfb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_ml/zzfb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsw:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->putAll(Ljava/util/Map;)V

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzfa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_ml/zzfa;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfe;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzex()Lcom/google/android/gms/internal/firebase_ml/zzfq;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzeq;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzeq;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzer;Lcom/google/android/gms/internal/firebase_ml/zzfq;Lcom/google/android/gms/internal/firebase_ml/zzfk;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfq;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzfa()Lcom/google/android/gms/internal/firebase_ml/zzfp;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzev()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsx:Lcom/google/android/gms/internal/firebase_ml/zzfj;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsy:I

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzsz:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzta:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
