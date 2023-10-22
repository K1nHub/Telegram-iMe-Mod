.class final Lkotlinx/serialization/internal/ParametrizedCacheEntry;
.super Ljava/lang/Object;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n1549#2:204\n1620#2,3:205\n73#3,2:208\n1#4:210\n1#4:211\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n*L\n196#1:204\n196#1:205,3\n197#1:208,2\n197#1:211\n*E\n"
.end annotation


# instance fields
.field private final serializers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/List<",
            "Lkotlinx/serialization/internal/KTypeWrapper;",
            ">;",
            "Lkotlin/Result<",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->serializers:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getSerializers$p(Lkotlinx/serialization/internal/ParametrizedCacheEntry;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 193
    iget-object p0, p0, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->serializers:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method
