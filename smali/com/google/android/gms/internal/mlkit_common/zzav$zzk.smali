.class public final Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzav$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

.field private static volatile zzj:Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzhl<",
            "Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaf;

.field private zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

.field private zzf:J

.field private zzg:F

.field private zzh:Lcom/google/android/gms/internal/mlkit_common/zzav$zzae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 19
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    .line 17
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

    .line 9
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1003\u0002\u0004\u1001\u0003\u0005\u1009\u0004"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzk;-><init>()V

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
