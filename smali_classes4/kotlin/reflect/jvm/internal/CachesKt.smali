.class public final Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "caches.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncaches.kt\nKotlin\n*S Kotlin\n*F\n+ 1 caches.kt\nkotlin/reflect/jvm/internal/CachesKt\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n73#2,2:75\n1#3:77\n*S KotlinDebug\n*F\n+ 1 caches.kt\nkotlin/reflect/jvm/internal/CachesKt\n*L\n68#1:75,2\n68#1:77\n*E\n"
.end annotation


# static fields
.field private static final CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/CacheByClass<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/CacheByClass<",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/reflect/KType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/CacheByClass<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation
.end field

.field private static final K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/CacheByClass<",
            "Lkotlin/reflect/jvm/internal/KClassImpl<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/CacheByClass<",
            "Lkotlin/reflect/jvm/internal/KPackageImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 40
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 46
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    return-void
.end method

.method public static final getOrCreateKType(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    const-string/jumbo v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 53
    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/CachesKt;->getOrCreateKTypeWithTypeArguments(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final getOrCreateKTypeWithTypeArguments(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 69
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/CachesKt;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lkotlin/reflect/full/KClassifiers;->createType(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;)Lkotlin/reflect/KType;

    move-result-object p0

    .line 74
    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const-string p0, "cache.getOrPut(arguments\u2026lable, emptyList())\n    }"

    .line 68
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/KType;

    return-object v2
.end method

.method public static final getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/KClassImpl<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0
.end method

.method public static final getOrCreateKotlinPackage(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/reflect/KDeclarationContainer;"
        }
    .end annotation

    const-string/jumbo v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KDeclarationContainer;

    return-object p0
.end method
