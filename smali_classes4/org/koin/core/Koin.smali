.class public final Lorg/koin/core/Koin;
.super Ljava/lang/Object;
.source "Koin.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Koin.kt\norg/koin/core/Koin\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n104#2:353\n119#2:354\n131#2:355\n156#2:356\n352#2:384\n146#3,2:357\n148#3,4:366\n152#3,3:371\n155#3:375\n148#3,8:376\n109#4,7:359\n1849#5:370\n1850#5:374\n*S KotlinDebug\n*F\n+ 1 Koin.kt\norg/koin/core/Koin\n*L\n78#1:353\n92#1:354\n103#1:355\n116#1:356\n172#1:384\n164#1:357,2\n164#1:366,4\n164#1:371,3\n164#1:375\n164#1:376,8\n164#1:359,7\n164#1:370\n164#1:374\n*E\n"
.end annotation


# instance fields
.field private final instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

.field private logger:Lorg/koin/core/logger/Logger;

.field private final scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/koin/core/registry/ScopeRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;-><init>(Lorg/koin/core/Koin;)V

    iput-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 53
    new-instance v0, Lorg/koin/core/registry/InstanceRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/InstanceRegistry;-><init>(Lorg/koin/core/Koin;)V

    iput-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    .line 56
    new-instance v0, Lorg/koin/core/registry/PropertyRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/PropertyRegistry;-><init>(Lorg/koin/core/Koin;)V

    .line 58
    new-instance v0, Lorg/koin/core/logger/EmptyLogger;

    invoke-direct {v0}, Lorg/koin/core/logger/EmptyLogger;-><init>()V

    iput-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    return-void
.end method

.method public static synthetic loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 326
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final createEagerInstances()V
    .locals 5

    .line 341
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    const-string v1, "create eager instances ..."

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->info(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lorg/koin/core/Koin$createEagerInstances$duration$1;

    invoke-direct {v0, p0}, Lorg/koin/core/Koin$createEagerInstances$duration$1;-><init>(Lorg/koin/core/Koin;)V

    invoke-static {v0}, Lorg/koin/core/time/MeasureKt;->measureDuration(Lkotlin/jvm/functions/Function0;)D

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eager instances created in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    invoke-virtual {v0}, Lorg/koin/core/registry/InstanceRegistry;->createAllEagerInstances$koin_core()V

    :goto_0
    return-void
.end method

.method public final get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    return-object v0
.end method

.method public final getLogger()Lorg/koin/core/logger/Logger;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    return-object v0
.end method

.method public final getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    return-object v0
.end method

.method public final loadModules(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 327
    invoke-static {p1, v0, v1, v0}, Lorg/koin/core/module/ModuleKt;->flatten$default(Ljava/util/List;Ljava/util/Set;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 328
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/koin/core/registry/InstanceRegistry;->loadModules$koin_core(Ljava/util/Set;Z)V

    .line 329
    iget-object p2, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    invoke-virtual {p2, p1}, Lorg/koin/core/registry/ScopeRegistry;->loadScopes(Ljava/util/Set;)V

    return-void
.end method

.method public final setupLogger(Lorg/koin/core/logger/Logger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    return-void
.end method
