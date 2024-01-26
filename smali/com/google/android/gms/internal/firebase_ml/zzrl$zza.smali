.class public final Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;",
        "Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzbfg:Lcom/google/android/gms/internal/firebase_ml/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvc<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zztc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfg:Lcom/google/android/gms/internal/firebase_ml/zzvc;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;Ljava/lang/Iterable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzt(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static zzom()Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;

    return-object v0
.end method

.method static synthetic zzon()Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    return-object v0
.end method

.method private final zzt(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_ml/zztc;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvd;)Lcom/google/android/gms/internal/firebase_ml/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zztc;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbff:Lcom/google/android/gms/internal/firebase_ml/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zztc;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvd;->zzdi(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzrk;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 30
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 23
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 28
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

    .line 20
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbff"

    aput-object v0, p1, p2

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zztc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 19
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;->zzbfh:Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzrk;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;-><init>()V

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
