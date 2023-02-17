.class public final Lcom/google/android/gms/wearable/internal/zzit;
.super Lcom/google/android/gms/wearable/internal/zzez;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private final zzf:[Landroid/content/IntentFilter;

.field private final zzg:Ljava/lang/String;


# direct methods
.method private constructor <init>([Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzez;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzf:[Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzk(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method public static zzm(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method public static zzn(Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method public static zzo(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method public static zzp(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method public static zzq(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzit;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzit;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object v0
.end method

.method static synthetic zzu(Lcom/google/android/gms/wearable/internal/zzev;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzit;->zzx(Lcom/google/android/gms/wearable/internal/zzev;Z[B)V

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/wearable/internal/zzev;Z[B)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzit;->zzx(Lcom/google/android/gms/wearable/internal/zzev;Z[B)V

    return-void
.end method

.method private static zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    :cond_0
    return-void
.end method

.method private static zzx(Lcom/google/android/gms/wearable/internal/zzev;Z[B)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzev;->zzd(Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "WearableListenerStub"

    const-string p2, "Failed to send a response back"

    .line 2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/wearable/internal/zzbf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzis;-><init>(Lcom/google/android/gms/wearable/internal/zzbf;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/wearable/internal/zzao;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzin;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzin;-><init>(Lcom/google/android/gms/wearable/internal/zzao;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_0
    return-void
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzio;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzio;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 0

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/wearable/internal/zzfx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzip;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzip;-><init>(Lcom/google/android/gms/wearable/internal/zzfx;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_0
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 0

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/wearable/internal/zzgm;)V
    .locals 0

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/wearable/internal/zzgm;)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/wearable/internal/zzfx;Lcom/google/android/gms/wearable/internal/zzev;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzir;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/wearable/internal/zzir;-><init>(Lcom/google/android/gms/wearable/internal/zzfx;Lcom/google/android/gms/wearable/internal/zzev;[B)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_0
    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzit;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzit;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzit;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzit;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzit;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzit;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method

.method public final zzt()[Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzit;->zzf:[Landroid/content/IntentFilter;

    return-object v0
.end method
