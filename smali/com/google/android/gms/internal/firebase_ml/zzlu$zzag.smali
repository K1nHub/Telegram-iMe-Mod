.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzapu:I

.field private zzapv:Z

.field private zzapw:Z

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;)V
    .locals 1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapu:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzab(Z)V

    return-void
.end method

.method private final zzab(Z)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapv:Z

    return-void
.end method

.method private final zzac(Z)V
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzm:I

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapw:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzac(Z)V

    return-void
.end method

.method public static zzkr()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;

    return-object v0
.end method

.method static synthetic zzks()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzapu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzapv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzapw"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0007\u0001\u0003\u0007\u0002"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;->zzapx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;-><init>()V

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
