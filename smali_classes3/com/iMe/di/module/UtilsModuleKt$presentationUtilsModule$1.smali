.class final Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UtilsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/di/module/UtilsModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/module/Module;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtilsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtilsModule.kt\ncom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,21:1\n98#2,6:22\n104#2,5:49\n98#2,6:54\n104#2,5:81\n98#2,6:86\n104#2,5:113\n202#3,6:28\n208#3:48\n202#3,6:60\n208#3:80\n202#3,6:92\n208#3:112\n102#4,14:34\n102#4,14:66\n102#4,14:98\n*S KotlinDebug\n*F\n+ 1 UtilsModule.kt\ncom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1\n*L\n11#1:22,6\n11#1:49,5\n12#1:54,6\n12#1:81,5\n16#1:86,6\n16#1:113,5\n11#1:28,6\n11#1:48\n12#1:60,6\n12#1:80\n16#1:92,6\n16#1:112\n11#1:34,14\n12#1:66,14\n16#1:98,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;

    invoke-direct {v0}, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;-><init>()V

    sput-object v0, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;->INSTANCE:Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 14

    const-string v0, "$this$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v5, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$1;->INSTANCE:Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$1;

    .line 205
    sget-object v0, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 207
    sget-object v13, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 109
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v1, Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v13

    .line 109
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v8}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_0
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    sget-object v10, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$2;->INSTANCE:Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$2;

    const/4 v9, 0x0

    .line 205
    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v7

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v2, Lcom/iMe/storage/domain/gateway/ActionGateway;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    move-object v11, v13

    .line 109
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {p1, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p1, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_1
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v10, Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$3;->INSTANCE:Lcom/iMe/di/module/UtilsModuleKt$presentationUtilsModule$1$3;

    const/4 v9, 0x0

    .line 205
    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v7

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 109
    new-instance v0, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v0

    move-object v11, v13

    .line 109
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_2
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
