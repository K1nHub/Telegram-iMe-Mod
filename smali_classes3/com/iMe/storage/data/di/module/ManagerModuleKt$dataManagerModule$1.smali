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
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,80:1\n103#2,6:81\n109#2,5:108\n103#2,6:113\n109#2,5:140\n103#2,6:145\n109#2,5:172\n103#2,6:177\n109#2,5:204\n103#2,6:209\n109#2,5:236\n103#2,6:241\n109#2,5:268\n103#2,6:273\n109#2,5:300\n103#2,6:305\n109#2,5:332\n103#2,6:337\n109#2,5:364\n103#2,6:369\n109#2,5:396\n103#2,6:401\n109#2,5:428\n103#2,6:433\n109#2,5:460\n201#3,6:87\n207#3:107\n201#3,6:119\n207#3:139\n201#3,6:151\n207#3:171\n201#3,6:183\n207#3:203\n201#3,6:215\n207#3:235\n201#3,6:247\n207#3:267\n201#3,6:279\n207#3:299\n201#3,6:311\n207#3:331\n201#3,6:343\n207#3:363\n201#3,6:375\n207#3:395\n201#3,6:407\n207#3:427\n201#3,6:439\n207#3:459\n105#4,14:93\n105#4,14:125\n105#4,14:157\n105#4,14:189\n105#4,14:221\n105#4,14:253\n105#4,14:285\n105#4,14:317\n105#4,14:349\n105#4,14:381\n105#4,14:413\n105#4,14:445\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n*L\n33#1:81,6\n33#1:108,5\n39#1:113,6\n39#1:140,5\n42#1:145,6\n42#1:172,5\n45#1:177,6\n45#1:204,5\n48#1:209,6\n48#1:236,5\n51#1:241,6\n51#1:268,5\n60#1:273,6\n60#1:300,5\n61#1:305,6\n61#1:332,5\n62#1:337,6\n62#1:364,5\n63#1:369,6\n63#1:396,5\n72#1:401,6\n72#1:428,5\n77#1:433,6\n77#1:460,5\n33#1:87,6\n33#1:107\n39#1:119,6\n39#1:139\n42#1:151,6\n42#1:171\n45#1:183,6\n45#1:203\n48#1:215,6\n48#1:235\n51#1:247,6\n51#1:267\n60#1:279,6\n60#1:299\n61#1:311,6\n61#1:331\n62#1:343,6\n62#1:363\n63#1:375,6\n63#1:395\n72#1:407,6\n72#1:427\n77#1:439,6\n77#1:459\n33#1:93,14\n39#1:125,14\n42#1:157,14\n45#1:189,14\n48#1:221,14\n51#1:253,14\n60#1:285,14\n61#1:317,14\n62#1:349,14\n63#1:381,14\n72#1:413,14\n77#1:445,14\n*E\n"
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

    .line 39
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

    .line 42
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

    .line 45
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

    .line 48
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

    .line 51
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

    .line 60
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

    .line 61
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

    .line 62
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

    .line 63
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

    .line 72
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

    .line 77
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
