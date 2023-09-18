.class public final Lorg/koin/core/Koin;
.super Ljava/lang/Object;
.source "Koin.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Koin.kt\norg/koin/core/Koin\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Logger.kt\norg/koin/core/logger/Logger\n+ 7 Measure.kt\norg/koin/core/time/MeasureKt\n*L\n1#1,328:1\n106#2:329\n121#2:330\n133#2:331\n158#2:332\n352#2:360\n151#3,2:333\n153#3,4:342\n157#3,3:347\n160#3:351\n153#3,8:352\n112#4,7:335\n1855#5:346\n1856#5:350\n28#6:361\n46#6,2:362\n29#6:364\n28#6:370\n46#6,2:371\n29#6:373\n34#7:365\n48#7,4:366\n*S KotlinDebug\n*F\n+ 1 Koin.kt\norg/koin/core/Koin\n*L\n82#1:329\n96#1:330\n107#1:331\n120#1:332\n176#1:360\n168#1:333,2\n168#1:342,4\n168#1:347,3\n168#1:351\n168#1:352,8\n168#1:335,7\n168#1:346\n168#1:350\n321#1:361\n321#1:362,2\n321#1:364\n325#1:370\n325#1:371,2\n325#1:373\n322#1:365\n322#1:366,4\n*E\n"
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

    .line 51
    new-instance v0, Lorg/koin/core/registry/ScopeRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;-><init>(Lorg/koin/core/Koin;)V

    iput-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 54
    new-instance v0, Lorg/koin/core/registry/InstanceRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/InstanceRegistry;-><init>(Lorg/koin/core/Koin;)V

    iput-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    .line 57
    new-instance v0, Lorg/koin/core/registry/PropertyRegistry;

    invoke-direct {v0, p0}, Lorg/koin/core/registry/PropertyRegistry;-><init>(Lorg/koin/core/Koin;)V

    .line 60
    new-instance v0, Lorg/koin/core/extension/ExtensionManager;

    invoke-direct {v0, p0}, Lorg/koin/core/extension/ExtensionManager;-><init>(Lorg/koin/core/Koin;)V

    .line 62
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

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final createEagerInstances()V
    .locals 7

    .line 321
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    .line 28
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Eager instances ..."

    invoke-virtual {v0, v1, v2}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v2

    .line 323
    iget-object v4, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    invoke-virtual {v4}, Lorg/koin/core/registry/InstanceRegistry;->createAllEagerInstances$koin_core()V

    .line 324
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v5

    .line 51
    new-instance v0, Lkotlin/Pair;

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 325
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eager instances created in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1, v2}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    :cond_1
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

    .line 135
    iget-object v0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    return-object v0
.end method

.method public final getLogger()Lorg/koin/core/logger/Logger;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    return-object v0
.end method

.method public final getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;
    .locals 1

    .line 51
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

    .line 307
    invoke-static {p1, v0, v1, v0}, Lorg/koin/core/module/ModuleKt;->flatten$default(Ljava/util/List;Ljava/util/Set;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lorg/koin/core/Koin;->instanceRegistry:Lorg/koin/core/registry/InstanceRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/koin/core/registry/InstanceRegistry;->loadModules$koin_core(Ljava/util/Set;Z)V

    .line 309
    iget-object p2, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    invoke-virtual {p2, p1}, Lorg/koin/core/registry/ScopeRegistry;->loadScopes(Ljava/util/Set;)V

    return-void
.end method

.method public final setupLogger(Lorg/koin/core/logger/Logger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lorg/koin/core/Koin;->logger:Lorg/koin/core/logger/Logger;

    return-void
.end method
