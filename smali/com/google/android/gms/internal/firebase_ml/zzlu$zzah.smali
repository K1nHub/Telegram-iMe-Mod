.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzah"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

.field private zzaps:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

.field private zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;)V
    .locals 0

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaps:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;Ljava/lang/Iterable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzq(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzm:I

    return-void
.end method

.method public static zzkt()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;

    return-object v0
.end method

.method static synthetic zzku()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    return-object v0
.end method

.method private final zzq(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvf;)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqc:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zztg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 40
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 33
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    monitor-enter p2

    .line 34
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 37
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 38
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

    .line 30
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzadg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzaps"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzaqc"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 27
    const-class p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzz;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u001b"

    .line 29
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;->zzaqd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 25
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzah;-><init>()V

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
