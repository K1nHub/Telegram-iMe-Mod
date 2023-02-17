.class public final Lcom/google/android/gms/wearable/internal/zzdb;
.super Lcom/google/android/gms/wearable/DataClient;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Lcom/google/android/gms/wearable/DataApi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/DataClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance p1, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/zzct;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/DataClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance p1, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/zzct;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "DataListener"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcy;

    invoke-direct {v2, p1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzcz;-><init>(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object p1

    const/16 p2, 0x5dcf

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegistrationMethods;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addListener(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.wearable.DATA_CHANGED"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhl;->zza(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzdb;->zza(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addListener(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;Landroid/net/Uri;I)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
            "Landroid/net/Uri;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "uri must not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "invalid filter type"

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v2, "com.google.android.gms.wearable.DATA_CHANGED"

    .line 5
    invoke-static {v2, p2, p3}, Lcom/google/android/gms/wearable/internal/zzhl;->zzb(Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/IntentFilter;

    move-result-object p2

    new-array p3, v1, [Landroid/content/IntentFilter;

    aput-object p2, p3, v0

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/wearable/internal/zzdb;->zza(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final deleteDataItems(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/wearable/internal/zzct;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcv;->zza:Lcom/google/android/gms/wearable/internal/zzcv;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final deleteDataItems(Landroid/net/Uri;I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/DataApi;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/wearable/internal/zzcv;->zza:Lcom/google/android/gms/wearable/internal/zzcv;

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getDataItem(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzci;

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzci;-><init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 1
    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcu;->zza:Lcom/google/android/gms/wearable/internal/zzcu;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getDataItems()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcj;

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    .line 1
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzcw;->zza:Lcom/google/android/gms/wearable/internal/zzcw;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getDataItems(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/wearable/internal/zzct;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcw;->zza:Lcom/google/android/gms/wearable/internal/zzcw;

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getDataItems(Landroid/net/Uri;I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/wearable/internal/zzcw;->zza:Lcom/google/android/gms/wearable/internal/zzcw;

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getFdForAsset(Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/Asset;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataClient$GetFdForAssetResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invalid asset"

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->zza()[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcm;

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzcm;-><init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 1
    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcx;->zza:Lcom/google/android/gms/wearable/internal/zzcx;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "asset is null"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFdForAsset(Lcom/google/android/gms/wearable/DataItemAsset;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataClient$GetFdForAssetResponse;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzcn;

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzcn;-><init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataItemAsset;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcx;->zza:Lcom/google/android/gms/wearable/internal/zzcx;

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final putDataItem(Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzdb;->zzb:Lcom/google/android/gms/wearable/DataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzch;

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzch;-><init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 1
    sget-object v0, Lcom/google/android/gms/wearable/internal/zzcu;->zza:Lcom/google/android/gms/wearable/internal/zzcu;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final removeListener(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "DataListener"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    const-string v0, "Key must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    const/16 v0, 0x5dc5

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
