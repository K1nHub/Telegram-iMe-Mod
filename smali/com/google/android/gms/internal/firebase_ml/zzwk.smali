.class final Lcom/google/android/gms/internal/firebase_ml/zzwk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwu<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

.field private final zzbvk:Z

.field private final zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwe;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zze(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvk:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzwk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzxm<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzul<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzwe;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzwk<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzwk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwk;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwe;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvk:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvk:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwe;->zzrj()Lcom/google/android/gms/internal/firebase_ml/zzwh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzwh;->zzrp()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzuo;

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzuo;->zzqz()Lcom/google/android/gms/internal/firebase_ml/zzyg;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzyg;->zzbza:Lcom/google/android/gms/internal/firebase_ml/zzyg;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzuo;->zzra()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzuo;->zzrb()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    instance-of v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzvl;

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzuo;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzvl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzvl;->zzsb()Lcom/google/android/gms/internal/firebase_ml/zzvj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzvn;->zzpx()Lcom/google/android/gms/internal/firebase_ml/zztn;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_ml/zzuo;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzyj;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/firebase_ml/zztm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztn()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzto()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    .line 47
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzrr()Lcom/google/android/gms/internal/firebase_ml/zzum;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    .line 51
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 52
    iget v2, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 57
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    iget-object v0, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    ushr-int/lit8 v5, v2, 0x3

    .line 59
    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuj;Lcom/google/android/gms/internal/firebase_ml/zzwe;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzf;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 64
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zzxp;Lcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    .line 62
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 65
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    .line 70
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 71
    iget v5, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    .line 89
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zze([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 90
    iget-object v2, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbor:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zztn;

    goto :goto_1

    .line 86
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    .line 87
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 80
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza([BILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    .line 81
    iget p3, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzbop:I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    iget-object v5, p5, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvj:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    .line 83
    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuj;Lcom/google/android/gms/internal/firebase_ml/zzwe;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzf;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    .line 93
    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/firebase_ml/zztj;->zza(I[BIILcom/google/android/gms/internal/firebase_ml/zztm;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 99
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zzb(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 102
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    throw p1
.end method

.method public final zzaa(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    .line 110
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzaf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 113
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvk:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzqu()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzac(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvk:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zza(Lcom/google/android/gms/internal/firebase_ml/zzul;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzq(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvt:Lcom/google/android/gms/internal/firebase_ml/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzxm;->zzq(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zzbvu:Lcom/google/android/gms/internal/firebase_ml/zzul;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzq(Ljava/lang/Object;)V

    return-void
.end method
