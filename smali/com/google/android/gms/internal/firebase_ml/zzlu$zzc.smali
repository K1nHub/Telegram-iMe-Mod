.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;",
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

.field private static final zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadf:J

.field private zzadi:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzadj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadl:Lcom/google/android/gms/internal/firebase_ml/zzvc;

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    .line 53
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzf(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;Ljava/lang/Iterable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzc(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadi:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadk:Lcom/google/android/gms/internal/firebase_ml/zzvd;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

    return-void
.end method

.method private final zzf(J)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzm:I

    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadf:J

    return-void
.end method

.method public static zzin()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;

    return-object v0
.end method

.method static synthetic zzio()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 43
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 36
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    monitor-enter p2

    .line 37
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 40
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 41
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

    .line 33
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

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

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzadf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u0003\u0002"

    .line 32
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;->zzadm:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 27
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzc;-><init>()V

    return-object p1

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
