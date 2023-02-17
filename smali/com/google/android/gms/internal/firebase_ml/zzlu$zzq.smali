.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzadl:Lcom/google/android/gms/internal/firebase_ml/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvc<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zzmc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadf:J

.field private zzadi:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzadj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

.field private zzaer:Z

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzma;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzma;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadl:Lcom/google/android/gms/internal/firebase_ml/zzvc;

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    .line 57
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzf(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;Ljava/lang/Iterable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzc(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzi(Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadi:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    return-void
.end method

.method private final zzc(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzmc;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvd;->zzdi(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    return-void
.end method

.method private final zzf(J)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzadf:J

    return-void
.end method

.method private final zzi(Z)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzm:I

    .line 26
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaer:Z

    return-void
.end method

.method public static zzjg()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    return-object v0
.end method

.method static synthetic zzjh()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 46
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 39
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 43
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 44
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

    .line 36
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadi"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzadj"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzadk"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzadf"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzaer"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u0003\u0002\u0005\u0007\u0003"

    .line 35
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;->zzaes:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzq;-><init>()V

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
