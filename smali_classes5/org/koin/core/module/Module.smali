.class public final Lorg/koin/core/module/Module;
.super Ljava/lang/Object;
.source "Module.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Module.kt\norg/koin/core/module/Module\n+ 2 Module.kt\norg/koin/core/module/ModuleKt\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,253:1\n161#1:277\n162#1,2:294\n161#1:296\n162#1,2:299\n202#2,6:254\n208#2:274\n217#2:278\n218#2:293\n217#2,2:297\n217#2:301\n218#2:316\n217#2,2:317\n102#3,14:260\n102#3,14:279\n102#3,14:302\n1849#4,2:275\n*S KotlinDebug\n*F\n+ 1 Module.kt\norg/koin/core/module/Module\n*L\n152#1:277\n152#1:294,2\n152#1:296\n152#1:299,2\n103#1:254,6\n103#1:274\n152#1:278\n152#1:293\n152#1:297,2\n161#1:301\n161#1:316\n161#1:317,2\n103#1:260,14\n152#1:279,14\n161#1:302,14\n123#1:275,2\n*E\n"
.end annotation


# instance fields
.field private final _createdAtStart:Z

.field private eagerInstances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final includedModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final scopes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/qualifier/Qualifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/koin/core/module/Module;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lorg/koin/core/module/Module;->_createdAtStart:Z

    .line 42
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->generateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->scopes:Ljava/util/HashSet;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/core/module/Module;-><init>(Z)V

    return-void
.end method

.method public static synthetic saveMapping$default(Lorg/koin/core/module/Module;Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/module/Module;->saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 178
    const-class v2, Lorg/koin/core/module/Module;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 182
    iget-object v2, p0, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    iget-object p1, p1, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getEagerInstances()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getIncludedModules$koin_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/List;

    return-object v0
.end method

.method public final getMappings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getScopes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/qualifier/Qualifier;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/koin/core/module/Module;->scopes:Ljava/util/HashSet;

    return-object v0
.end method

.method public final get_createdAtStart()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/koin/core/module/Module;->_createdAtStart:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "instanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    .line 116
    invoke-static/range {v3 .. v8}, Lorg/koin/core/module/Module;->saveMapping$default(Lorg/koin/core/module/Module;Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    return-void
.end method

.method public final prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "instanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "mapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 137
    iget-object p3, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 138
    invoke-static {p2, p1}, Lorg/koin/core/module/ModuleKt;->overrideError(Lorg/koin/core/instance/InstanceFactory;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object p3, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
