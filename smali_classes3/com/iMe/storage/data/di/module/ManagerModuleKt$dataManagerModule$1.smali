.class final Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/di/module/ManagerModuleKt;
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
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,97:1\n103#2,6:98\n109#2,5:125\n103#2,6:130\n109#2,5:157\n103#2,6:162\n109#2,5:189\n103#2,6:194\n109#2,5:221\n103#2,6:226\n109#2,5:253\n103#2,6:258\n109#2,5:285\n103#2,6:290\n109#2,5:317\n103#2,6:322\n109#2,5:349\n103#2,6:354\n109#2,5:381\n103#2,6:386\n109#2,5:413\n103#2,6:418\n109#2,5:445\n103#2,6:450\n109#2,5:477\n201#3,6:104\n207#3:124\n201#3,6:136\n207#3:156\n201#3,6:168\n207#3:188\n201#3,6:200\n207#3:220\n201#3,6:232\n207#3:252\n201#3,6:264\n207#3:284\n201#3,6:296\n207#3:316\n201#3,6:328\n207#3:348\n201#3,6:360\n207#3:380\n201#3,6:392\n207#3:412\n201#3,6:424\n207#3:444\n201#3,6:456\n207#3:476\n105#4,14:110\n105#4,14:142\n105#4,14:174\n105#4,14:206\n105#4,14:238\n105#4,14:270\n105#4,14:302\n105#4,14:334\n105#4,14:366\n105#4,14:398\n105#4,14:430\n105#4,14:462\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n*L\n33#1:98,6\n33#1:125,5\n41#1:130,6\n41#1:157,5\n44#1:162,6\n44#1:189,5\n51#1:194,6\n51#1:221,5\n54#1:226,6\n54#1:253,5\n57#1:258,6\n57#1:285,5\n66#1:290,6\n66#1:317,5\n72#1:322,6\n72#1:349,5\n73#1:354,6\n73#1:381,5\n74#1:386,6\n74#1:413,5\n83#1:418,6\n83#1:445,5\n89#1:450,6\n89#1:477,5\n33#1:104,6\n33#1:124\n41#1:136,6\n41#1:156\n44#1:168,6\n44#1:188\n51#1:200,6\n51#1:220\n54#1:232,6\n54#1:252\n57#1:264,6\n57#1:284\n66#1:296,6\n66#1:316\n72#1:328,6\n72#1:348\n73#1:360,6\n73#1:380\n74#1:392,6\n74#1:412\n83#1:424,6\n83#1:444\n89#1:456,6\n89#1:476\n33#1:110,14\n41#1:142,14\n44#1:174,14\n51#1:206,14\n54#1:238,14\n57#1:270,14\n66#1:302,14\n72#1:334,14\n73#1:366,14\n74#1:398,14\n83#1:430,14\n89#1:462,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;

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

    .line 31
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 16

    move-object/from16 v0, p1

    const-class v1, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    const-string v2, "$this$module"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v7, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$1;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$1;

    .line 204
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v4

    .line 206
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 112
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/ton/TonController;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v10

    move-object v8, v15

    .line 112
    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v10}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_0
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 41
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$2;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$2;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 44
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$3;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$3;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_2
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 51
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_3
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 54
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$5;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_4
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 57
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_5
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 66
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$7;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$7;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_6
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 72
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$8;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$8;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_7
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 73
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$9;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$9;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_8
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 74
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$10;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$10;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_9
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 83
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$11;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$11;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 111
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_a
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 89
    sget-object v12, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$12;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$12;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/manager/review/AppReviewManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 112
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_b
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-void
.end method
