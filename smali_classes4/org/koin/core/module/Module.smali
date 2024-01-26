.class public final Lorg/koin/core/module/Module;
.super Ljava/lang/Object;
.source "Module.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Module.kt\norg/koin/core/module/Module\n+ 2 Module.kt\norg/koin/core/module/ModuleKt\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,251:1\n160#1:275\n161#1,2:292\n160#1:294\n161#1,2:297\n201#2,6:252\n207#2:272\n216#2:276\n217#2:291\n216#2,2:295\n216#2:299\n217#2:314\n216#2,2:315\n105#3,14:258\n105#3,14:277\n105#3,14:300\n1855#4,2:273\n*S KotlinDebug\n*F\n+ 1 Module.kt\norg/koin/core/module/Module\n*L\n151#1:275\n151#1:292,2\n151#1:294\n151#1:297,2\n108#1:252,6\n108#1:272\n151#1:276\n151#1:291\n151#1:295,2\n160#1:299\n160#1:314\n160#1:315,2\n108#1:258,14\n151#1:277,14\n160#1:300,14\n126#1:273,2\n*E\n"
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

    .line 41
    iput-boolean p1, p0, Lorg/koin/core/module/Module;->_createdAtStart:Z

    .line 44
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->generateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    .line 56
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/module/Module;->scopes:Ljava/util/HashSet;

    .line 59
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

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/core/module/Module;-><init>(Z)V

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

    .line 177
    const-class v2, Lorg/koin/core/module/Module;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 181
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

    .line 46
    iget-object v0, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getIncludedModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    .line 59
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

    .line 50
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

    .line 56
    iget-object v0, p0, Lorg/koin/core/module/Module;->scopes:Ljava/util/HashSet;

    return-object v0
.end method

.method public final get_createdAtStart()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/koin/core/module/Module;->_createdAtStart:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/koin/core/module/Module;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "instanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0, p1}, Lorg/koin/core/module/Module;->saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;)V

    return-void
.end method

.method public final indexSecondaryTypes(Lorg/koin/core/instance/InstanceFactory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "instanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClass;

    .line 127
    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p0, v2, p1}, Lorg/koin/core/module/Module;->saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;)V

    goto :goto_0

    :cond_0
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

    .line 134
    iget-object v0, p0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "mapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/koin/core/module/Module;->mappings:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
