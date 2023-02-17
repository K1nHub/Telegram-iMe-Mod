.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadb:I

.field private zzade:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private zzalk:J

.field private zzall:J

.field private zzalm:I

.field private zzaln:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    .line 53
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V
    .locals 1

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalm:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzat(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;J)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzl(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    return-void
.end method

.method private final zzat(I)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzaln:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzade:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzadb:I

    return-void
.end method

.method public static zzjs()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    return-object v0
.end method

.method static synthetic zzjt()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    return-object v0
.end method

.method private final zzl(J)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzm:I

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalk:J

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 36
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    monitor-enter p2

    .line 37
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 40
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzade"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzalk"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzadb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzall"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzalm"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zza;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzaln"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0000\u0002\u0003\u0001\u0003\u000c\u0002\u0004\u0003\u0003\u0005\u000c\u0004\u0006\u000b\u0005"

    .line 32
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;->zzalo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 26
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzw;-><init>()V

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
