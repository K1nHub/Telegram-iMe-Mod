.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaei:I

.field private zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;Ljava/lang/Iterable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzj(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)V
    .locals 1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzm:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaei:I

    return-void
.end method

.method private final zzj(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaej:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zztg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static zzje()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;

    return-object v0
.end method

.method static synthetic zzjf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzaei"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzaej"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000c\u0000\u0002\u0016"

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzaek:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;-><init>()V

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
