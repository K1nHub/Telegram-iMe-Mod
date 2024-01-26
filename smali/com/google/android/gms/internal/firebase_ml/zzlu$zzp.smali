.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzade:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzadf:J

.field private zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    .line 55
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrh()Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrh()Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzf(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;Ljava/lang/Iterable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzg(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;Ljava/lang/Iterable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzh(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzade:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    return-void
.end method

.method private final zzf(J)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzm:I

    .line 26
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzadf:J

    return-void
.end method

.method private final zzg(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvf;)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaef:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zztg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzh(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
            ">;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvf;)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeg:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zztg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static zzjc()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    return-object v0
.end method

.method static synthetic zzjd()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 29
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 45
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 38
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    monitor-enter p2

    .line 39
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 42
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 43
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

    .line 35
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzm"

    aput-object v1, p1, p3

    const-string p3, "zzadd"

    aput-object p3, p1, v0

    const/4 p3, 0x2

    const-string v0, "zzade"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zzaef"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzaeg"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const/4 p2, 0x7

    const-string p3, "zzadf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001b\u0004\u001b\u0005\u0003\u0002"

    .line 34
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;->zzaeh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;-><init>()V

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
