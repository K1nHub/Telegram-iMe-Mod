.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzaa"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzanr:Lcom/google/android/gms/internal/firebase_ml/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvc<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzant:Lcom/google/android/gms/internal/firebase_ml/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvc<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

.field private zzanp:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

.field private zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

.field private zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzna;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzna;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanr:Lcom/google/android/gms/internal/firebase_ml/zzvc;

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzmz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzant:Lcom/google/android/gms/internal/firebase_ml/zzvc;

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    .line 65
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrf()Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrf()Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;Ljava/lang/Iterable;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzl(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanp:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;Ljava/lang/Iterable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    .line 32
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzm:I

    return-void
.end method

.method public static zzkd()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    return-object v0
.end method

.method static synthetic zzke()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    return-object v0
.end method

.method private final zzl(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanq:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvd;->zzdi(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzm(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzans:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvd;->zzdi(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 53
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 46
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    monitor-enter p2

    .line 47
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 50
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 51
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 43
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzanp"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzanq"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzans"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzadg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u001e\u0005\t\u0002"

    .line 42
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzanu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 36
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
