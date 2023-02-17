.class Lorg/solovyev/android/checkout/MapCache;
.super Ljava/lang/Object;
.source "MapCache.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Cache;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/solovyev/android/checkout/Cache$Key;",
            "Lorg/solovyev/android/checkout/Cache$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/MapCache;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Lorg/solovyev/android/checkout/Cache$Key;)Lorg/solovyev/android/checkout/Cache$Entry;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/solovyev/android/checkout/MapCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/solovyev/android/checkout/Cache$Entry;

    return-object p1
.end method

.method public put(Lorg/solovyev/android/checkout/Cache$Key;Lorg/solovyev/android/checkout/Cache$Entry;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/solovyev/android/checkout/MapCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Lorg/solovyev/android/checkout/Cache$Key;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/solovyev/android/checkout/MapCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAll(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/solovyev/android/checkout/MapCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/Cache$Key;

    iget v1, v1, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    if-ne v1, p1, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
