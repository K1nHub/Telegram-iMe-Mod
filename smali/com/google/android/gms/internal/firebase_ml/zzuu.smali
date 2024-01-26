.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzuu;
.super Lcom/google/android/gms/internal/firebase_ml/zztg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zzf;,
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zzd;,
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;,
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_ml/zztg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbsq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

.field private zzbsp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsq:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zztg;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzxp;->zztn()Lcom/google/android/gms/internal/firebase_ml/zzxp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbso:Lcom/google/android/gms/internal/firebase_ml/zzxp;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;[BIILcom/google/android/gms/internal/firebase_ml/zzuj;)Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/firebase_ml/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_ml/zzve;
        }
    .end annotation

    .line 93
    sget p2, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbsz:I

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 95
    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 96
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zztm;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/firebase_ml/zztm;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuj;)V

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/firebase_ml/zztm;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzqa()V

    .line 98
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zztg;->zzboh:I

    if-nez p1, :cond_0

    return-object p0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzg(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/firebase_ml/zzve;

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    throw p0

    .line 104
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzve;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzg(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;[BLcom/google/android/gms/internal/firebase_ml/zzuj;)Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/firebase_ml/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_ml/zzve;
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;[BIILcom/google/android/gms/internal/firebase_ml/zzuj;)Lcom/google/android/gms/internal/firebase_ml/zzuu;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzxn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzxn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwe;)V

    .line 116
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzve;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzg(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;
    .locals 1

    .line 83
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 86
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvd;->zzdh(I)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_ml/zzvf;)Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 92
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzcl(I)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzwv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzwv;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 62
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 64
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 65
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 63
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsq:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 67
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbsw:I

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzac(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 77
    sget p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbsx:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 80
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzuu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    if-nez v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzxs;->zzm(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 47
    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbtb:I

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    if-eqz v0, :cond_1

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsq:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzrf()Lcom/google/android/gms/internal/firebase_ml/zzvd;
    .locals 1

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzux;->zzrs()Lcom/google/android/gms/internal/firebase_ml/zzux;

    move-result-object v0

    return-object v0
.end method

.method protected static zzrg()Lcom/google/android/gms/internal/firebase_ml/zzva;
    .locals 1

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzrc()Lcom/google/android/gms/internal/firebase_ml/zzus;

    move-result-object v0

    return-object v0
.end method

.method protected static zzrh()Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "TE;>;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzws;->zzsv()Lcom/google/android/gms/internal/firebase_ml/zzws;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbtb:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztg;->zzboh:I

    if-eqz v0, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztg;->zzboh:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzwj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase_ml/zzue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzug;->zza(Lcom/google/android/gms/internal/firebase_ml/zzue;)Lcom/google/android/gms/internal/firebase_ml/zzug;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyj;)V

    return-void
.end method

.method final zzci(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    return-void
.end method

.method final zzpy()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    return v0
.end method

.method protected final zzqa()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzq(Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbta:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    return-object v0
.end method

.method public final zzre()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzsw()Lcom/google/android/gms/internal/firebase_ml/zzwt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwt;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzwu;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzwu;->zzaa(Ljava/lang/Object;)I

    move-result v0

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    .line 37
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzbsp:I

    return v0
.end method

.method public final synthetic zzri()Lcom/google/android/gms/internal/firebase_ml/zzwh;
    .locals 2

    .line 122
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbta:I

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    .line 125
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzuu;)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    return-object v0
.end method

.method public final synthetic zzrj()Lcom/google/android/gms/internal/firebase_ml/zzwh;
    .locals 2

    .line 129
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbta:I

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    return-object v0
.end method

.method public final synthetic zzrk()Lcom/google/android/gms/internal/firebase_ml/zzwe;
    .locals 2

    .line 134
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbtb:I

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    return-object v0
.end method
