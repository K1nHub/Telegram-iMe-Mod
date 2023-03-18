.class final Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TelegramModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/di/module/TelegramModuleKt;
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
    value = "SMAP\nTelegramModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramModule.kt\ncom/smedialink/di/module/TelegramModuleKt$telegramModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,28:1\n98#2,6:29\n104#2,5:56\n148#2,14:61\n162#2,2:91\n148#2,14:93\n162#2,2:123\n98#2,6:125\n104#2,5:152\n98#2,6:157\n104#2,5:184\n148#2,14:189\n162#2,2:219\n148#2,14:221\n162#2,2:251\n148#2,14:253\n162#2,2:283\n202#3,6:35\n208#3:55\n217#3:75\n218#3:90\n217#3:107\n218#3:122\n202#3,6:131\n208#3:151\n202#3,6:163\n208#3:183\n217#3:203\n218#3:218\n217#3:235\n218#3:250\n217#3:267\n218#3:282\n102#4,14:41\n102#4,14:76\n102#4,14:108\n102#4,14:137\n102#4,14:169\n102#4,14:204\n102#4,14:236\n102#4,14:268\n*S KotlinDebug\n*F\n+ 1 TelegramModule.kt\ncom/smedialink/di/module/TelegramModuleKt$telegramModule$1\n*L\n18#1:29,6\n18#1:56,5\n19#1:61,14\n19#1:91,2\n20#1:93,14\n20#1:123,2\n22#1:125,6\n22#1:152,5\n23#1:157,6\n23#1:184,5\n24#1:189,14\n24#1:219,2\n26#1:221,14\n26#1:251,2\n27#1:253,14\n27#1:283,2\n18#1:35,6\n18#1:55\n19#1:75\n19#1:90\n20#1:107\n20#1:122\n22#1:131,6\n22#1:151\n23#1:163,6\n23#1:183\n24#1:203\n24#1:218\n26#1:235\n26#1:250\n27#1:267\n27#1:282\n18#1:41,14\n19#1:76,14\n20#1:108,14\n22#1:137,14\n23#1:169,14\n24#1:204,14\n26#1:236,14\n27#1:268,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;

    invoke-direct {v0}, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;

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

    .line 17
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v6, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$1;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$1;

    .line 205
    sget-object v1, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    .line 207
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 109
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v2, Lcom/smedialink/manager/TelegramApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, v9

    move-object v7, v14

    .line 109
    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v9}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_0
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    sget-object v8, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$2;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$2;

    const/4 v7, 0x0

    .line 152
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v5

    .line 217
    sget-object v2, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v3

    move-object v9, v2

    .line 109
    invoke-direct/range {v4 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 218
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    sget-object v19, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$3;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$3;

    const/16 v18, 0x0

    .line 152
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v16

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/gateway/TelegramControllersGateway;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object v15, v3

    move-object/from16 v20, v2

    .line 109
    invoke-direct/range {v15 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 218
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    sget-object v11, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$4;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$4;

    const/4 v10, 0x0

    .line 205
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v8

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/manager/multireply/message/MessageLinkCache;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move-object v7, v3

    move-object v12, v14

    .line 109
    invoke-direct/range {v7 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_1
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v11, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$5;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$5;

    const/4 v10, 0x0

    .line 205
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v8

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move-object v7, v3

    move-object v12, v14

    .line 109
    invoke-direct/range {v7 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_2
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    sget-object v19, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$6;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$6;

    const/16 v18, 0x0

    .line 152
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v16

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/manager/multireply/MultiReplyInteractor;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object v15, v3

    move-object/from16 v20, v2

    .line 109
    invoke-direct/range {v15 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 218
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    sget-object v19, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;

    .line 152
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v16

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v4, Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object v15, v3

    .line 109
    invoke-direct/range {v15 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 218
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    sget-object v19, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$8;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$8;

    .line 152
    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v16

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/manager/contacts/SelectedContactsDataStore;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object v15, v1

    .line 109
    invoke-direct/range {v15 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 218
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
