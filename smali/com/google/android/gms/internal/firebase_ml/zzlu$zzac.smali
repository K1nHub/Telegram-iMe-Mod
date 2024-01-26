.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

.field private zzapd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzapd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzm:I

    return-void
.end method

.method public static zzkh()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    return-object v0
.end method

.method static synthetic zzki()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzapd"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzadg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002"

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzape:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;-><init>()V

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
