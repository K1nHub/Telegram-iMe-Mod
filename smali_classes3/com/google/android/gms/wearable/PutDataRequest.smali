.class public Lcom/google/android/gms/wearable/PutDataRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PutDataRequestCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEAR_URI_SCHEME:Ljava/lang/String; = "wear"

.field private static final zza:J

.field private static final zzb:Ljava/util/Random;


# instance fields
.field private final zzc:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUri"
        id = 0x2
    .end annotation
.end field

.field private final zzd:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAssetsInternal"
        id = 0x4
    .end annotation
.end field

.field private zze:[B
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getData"
        id = 0x5
    .end annotation
.end field

.field private zzf:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSyncDeadline"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/wearable/PutDataRequest;->zza:J

    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->zzb:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 6

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-wide v4, Lcom/google/android/gms/wearable/PutDataRequest;->zza:J

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(Landroid/net/Uri;Landroid/os/Bundle;[BJ)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;[BJ)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzc:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    const-class p1, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p3, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zze:[B

    iput-wide p4, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzf:J

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 1

    const-string v0, "path must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->zzb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->zza(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createFromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 4

    const-string v0, "source must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->zza(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/DataItemAsset;

    invoke-interface {v3}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/DataItemAsset;

    invoke-interface {v2}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot create an asset for a put request without a digest: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getData()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    return-object v0
.end method

.method public static createWithAutoAppendedId(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 3

    const-string v0, "pathPrefix must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "PN"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzb:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->zzb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/wearable/PutDataRequest;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static zza(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 1

    const-string v0, "uri must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/PutDataRequest;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method private static zzb(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "A path must start with a single / ."

    if-eqz v0, :cond_1

    const-string v0, "//"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/net/Uri$Builder;

    .line 7
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "wear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An empty path was supplied."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "key must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    return-object p1
.end method

.method public getAssets()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zze:[B

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public hasAsset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUrgent()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzf:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public removeAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 1

    const-string v0, "key must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object p0
.end method

.method public setData([B)Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zze:[B

    return-object p0
.end method

.method public setUrgent()Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzf:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DataMap"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PutDataRequest["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zze:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 12
    :cond_0
    array-length v1, v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSz="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 4
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", numAssets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzc:Landroid/net/Uri;

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzf:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", syncDeadline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "]"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "]\n  assets: "

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 9
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "\n  ]"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "dest must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzd:Landroid/os/Bundle;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    move-result-object p2

    const/4 v1, 0x5

    .line 7
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-wide v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->zzf:J

    const/4 p2, 0x6

    .line 8
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
