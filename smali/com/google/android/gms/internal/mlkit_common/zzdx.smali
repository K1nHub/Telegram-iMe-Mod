.class public final Lcom/google/android/gms/internal/mlkit_common/zzdx;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/firebase/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

.field private final zzd:Lcom/google/mlkit/common/model/RemoteModel;

.field private final zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 64
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    .line 65
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 66
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 67
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdw;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Lcom/google/firebase/components/Component;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzdx;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;
    .locals 3

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 60
    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzds;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    .line 8
    invoke-virtual {v0}, Lcom/google/mlkit/common/model/RemoteModel;->getModelHash()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p5}, Lcom/google/android/gms/internal/mlkit_common/zzea;->zza(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;

    move-result-object p5

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/google/mlkit/common/model/RemoteModel;->getModelNameForBackend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v1, ""

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;

    move-result-object p5

    .line 16
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;

    move-result-object p5

    .line 17
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p5, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    int-to-long p6, p7

    .line 22
    invoke-virtual {p1, p6, p7}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zzc(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    move-result-object p1

    const-string p5, "Model downloaded without its beginning time recorded."

    const-string p6, "ModelDownloadLogger"

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_3

    .line 25
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {p3, p7}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelDownloadBeginTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 27
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-virtual {p3, p6, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {p3, p7}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelFirstUseTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide v4

    cmp-long p3, v4, v0

    if-nez p3, :cond_2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 31
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {p3, p7, v4, v5}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->setModelFirstUseTimeMs(Lcom/google/mlkit/common/model/RemoteModel;J)V

    :cond_2
    sub-long/2addr v4, v2

    .line 33
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zza(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    :cond_3
    :goto_0
    if-eqz p4, :cond_5

    .line 35
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {p3, p4}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getModelDownloadBeginTimeMs(Lcom/google/mlkit/common/model/RemoteModel;)J

    move-result-wide p3

    cmp-long p7, p3, v0

    if-nez p7, :cond_4

    .line 37
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-virtual {p3, p6, p5}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    sub-long/2addr p5, p3

    .line 40
    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;->zzb(J)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    .line 41
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p4

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzbg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbg;

    .line 45
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/mlkit/common/sdkinternal/ModelType;I)V
    .locals 8

    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object v1

    const/4 p1, 0x6

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    move-result-object v6

    const-string v2, "NA"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 55
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method

.method public final zza(IZLcom/google/mlkit/common/sdkinternal/ModelType;I)V
    .locals 8

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object v1

    .line 49
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    move-result-object v6

    const-string v2, "NA"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method

.method public final zza(ZLcom/google/mlkit/common/sdkinternal/ModelType;I)V
    .locals 8

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zzn:Lcom/google/android/gms/internal/mlkit_common/zzbf;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;

    const-string v2, "NA"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;I)V

    return-void
.end method
