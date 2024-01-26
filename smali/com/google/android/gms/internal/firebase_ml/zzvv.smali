.class final Lcom/google/android/gms/internal/firebase_ml/zzvv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwx;


# static fields
.field private static final zzbus:Lcom/google/android/gms/internal/firebase_ml/zzwf;


# instance fields
.field private final zzbur:Lcom/google/android/gms/internal/firebase_ml/zzwf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zzbus:Lcom/google/android/gms/internal/firebase_ml/zzwf;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvx;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase_ml/zzwf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuv;->zzrl()Lcom/google/android/gms/internal/firebase_ml/zzuv;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zzsg()Lcom/google/android/gms/internal/firebase_ml/zzwf;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvx;-><init>([Lcom/google/android/gms/internal/firebase_ml/zzwf;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvv;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzwf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzwf;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzwf;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zzbur:Lcom/google/android/gms/internal/firebase_ml/zzwf;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzwc;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_ml/zzwc;->zzsl()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zze;->zzbte:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzsg()Lcom/google/android/gms/internal/firebase_ml/zzwf;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzwf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zzbus:Lcom/google/android/gms/internal/firebase_ml/zzwf;

    return-object v0
.end method


# virtual methods
.method public final zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwu;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzwu<",
            "TT;>;"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzl(Ljava/lang/Class;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zzbur:Lcom/google/android/gms/internal/firebase_ml/zzwf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzwf;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzwc;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase_ml/zzwc;->zzsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zztb()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzun;->zzqw()Lcom/google/android/gms/internal/firebase_ml/zzul;

    move-result-object v0

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase_ml/zzwc;->zzsn()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzwk;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzsz()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzun;->zzqx()Lcom/google/android/gms/internal/firebase_ml/zzul;

    move-result-object v0

    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase_ml/zzwc;->zzsn()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzwk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzwk;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzst()Lcom/google/android/gms/internal/firebase_ml/zzwm;

    move-result-object v4

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzsf()Lcom/google/android/gms/internal/firebase_ml/zzvo;

    move-result-object v5

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zztb()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object v6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzun;->zzqw()Lcom/google/android/gms/internal/firebase_ml/zzul;

    move-result-object v7

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwd;->zzsp()Lcom/google/android/gms/internal/firebase_ml/zzwb;

    move-result-object v8

    move-object v2, p1

    .line 30
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzwc;Lcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)Lcom/google/android/gms/internal/firebase_ml/zzwi;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzst()Lcom/google/android/gms/internal/firebase_ml/zzwm;

    move-result-object v4

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzsf()Lcom/google/android/gms/internal/firebase_ml/zzvo;

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zztb()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object v6

    const/4 v7, 0x0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwd;->zzsp()Lcom/google/android/gms/internal/firebase_ml/zzwb;

    move-result-object v8

    move-object v2, p1

    .line 36
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzwc;Lcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)Lcom/google/android/gms/internal/firebase_ml/zzwi;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzvv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwc;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzss()Lcom/google/android/gms/internal/firebase_ml/zzwm;

    move-result-object v4

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzse()Lcom/google/android/gms/internal/firebase_ml/zzvo;

    move-result-object v5

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzsz()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object v6

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzun;->zzqx()Lcom/google/android/gms/internal/firebase_ml/zzul;

    move-result-object v7

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwd;->zzso()Lcom/google/android/gms/internal/firebase_ml/zzwb;

    move-result-object v8

    move-object v2, p1

    .line 45
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzwc;Lcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)Lcom/google/android/gms/internal/firebase_ml/zzwi;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwo;->zzss()Lcom/google/android/gms/internal/firebase_ml/zzwm;

    move-result-object v4

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzse()Lcom/google/android/gms/internal/firebase_ml/zzvo;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzww;->zzta()Lcom/google/android/gms/internal/firebase_ml/zzxm;

    move-result-object v6

    const/4 v7, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzwd;->zzso()Lcom/google/android/gms/internal/firebase_ml/zzwb;

    move-result-object v8

    move-object v2, p1

    .line 51
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase_ml/zzwi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzwc;Lcom/google/android/gms/internal/firebase_ml/zzwm;Lcom/google/android/gms/internal/firebase_ml/zzvo;Lcom/google/android/gms/internal/firebase_ml/zzxm;Lcom/google/android/gms/internal/firebase_ml/zzul;Lcom/google/android/gms/internal/firebase_ml/zzwb;)Lcom/google/android/gms/internal/firebase_ml/zzwi;

    move-result-object p1

    return-object p1
.end method
