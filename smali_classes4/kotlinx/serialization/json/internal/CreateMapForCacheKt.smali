.class public final Lkotlinx/serialization/json/internal/CreateMapForCacheKt;
.super Ljava/lang/Object;
.source "createMapForCache.kt"


# direct methods
.method public static final createMapForCache(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 15
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object v0
.end method
