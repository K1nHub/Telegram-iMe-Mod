.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadb:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzm:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadb:I

    return-void
.end method

.method public static zzij()Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;

    return-object v0
.end method

.method static synthetic zzik()Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c\u0000"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzadc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;-><init>()V

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
