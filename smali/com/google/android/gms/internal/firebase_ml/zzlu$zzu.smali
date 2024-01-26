.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadb:I

.field private zzaer:Z

.field private zzalb:J

.field private zzalc:Z

.field private zzald:Z

.field private zzale:Z

.field private zzalf:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 52
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzj(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm(Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzn(Z)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzadb:I

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzo(Z)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzi(Z)V

    return-void
.end method

.method private final zzi(Z)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzaer:Z

    return-void
.end method

.method private final zzj(J)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalb:J

    return-void
.end method

.method public static zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    return-object v0
.end method

.method static synthetic zzjq()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    return-object v0
.end method

.method private final zzm(Z)V
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalc:Z

    return-void
.end method

.method private final zzn(Z)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzald:Z

    return-void
.end method

.method private final zzo(Z)V
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzm:I

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzale:Z

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

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzalb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzadb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzalc"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzald"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzale"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzaer"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzalf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0003\u0000\u0002\u000c\u0001\u0003\u0007\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0007\u0005\u0007\u000b\u0006"

    .line 30
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzalg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 25
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;-><init>()V

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
