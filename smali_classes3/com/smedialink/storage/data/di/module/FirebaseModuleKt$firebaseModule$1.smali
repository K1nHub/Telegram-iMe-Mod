.class final Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/FirebaseModuleKt;-><clinit>()V
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
    value = "SMAP\nFirebaseModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseModule.kt\ncom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,28:1\n98#2,6:29\n104#2,5:56\n98#2,6:61\n104#2,5:88\n98#2,6:93\n104#2,5:120\n98#2,6:125\n104#2,5:152\n202#3,6:35\n208#3:55\n202#3,6:67\n208#3:87\n202#3,6:99\n208#3:119\n202#3,6:131\n208#3:151\n102#4,14:41\n102#4,14:73\n102#4,14:105\n102#4,14:137\n*S KotlinDebug\n*F\n+ 1 FirebaseModule.kt\ncom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1\n*L\n14#1:29,6\n14#1:56,5\n15#1:61,6\n15#1:88,5\n16#1:93,6\n16#1:120,5\n17#1:125,6\n17#1:152,5\n14#1:35,6\n14#1:55\n15#1:67,6\n15#1:87\n16#1:99,6\n16#1:119\n17#1:131,6\n17#1:151\n14#1:41,14\n15#1:73,14\n16#1:105,14\n17#1:137,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;

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

    .line 13
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 14

    const-string v0, "$this$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v5, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$1;

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
    const-class v1, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

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

    .line 15
    sget-object v10, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$2;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$2;

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
    const-class v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

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
    sget-object v10, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$3;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$3;

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
    const-class v2, Lcom/google/firebase/analytics/FirebaseAnalytics;

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

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p1, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_2
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    sget-object v10, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$4;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1$4;

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
    const-class v1, Lcom/google/firebase/FirebaseApp;

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

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_3
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
