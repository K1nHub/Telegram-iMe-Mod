.class public final Lorg/koin/dsl/DefinitionBindingKt;
.super Ljava/lang/Object;
.source "DefinitionBinding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefinitionBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefinitionBinding.kt\norg/koin/dsl/DefinitionBindingKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,76:1\n13536#2,2:77\n*S KotlinDebug\n*F\n+ 1 DefinitionBinding.kt\norg/koin/dsl/DefinitionBindingKt\n*L\n63#1:77,2\n*E\n"
.end annotation


# direct methods
.method public static final binds(Lkotlin/Pair;[Lkotlin/reflect/KClass;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lorg/koin/core/module/Module;",
            "+",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;[",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lkotlin/Pair<",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/definition/BeanDefinition;->setSecondaryTypes(Ljava/util/List;)V

    .line 13536
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 64
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v3}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v4}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/module/Module;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/koin/core/module/Module;->saveMapping(Ljava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
