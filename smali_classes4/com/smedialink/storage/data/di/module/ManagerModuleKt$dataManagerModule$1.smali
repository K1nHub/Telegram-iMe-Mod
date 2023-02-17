.class final Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/ManagerModuleKt;-><clinit>()V
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
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,68:1\n98#2,6:69\n104#2,5:96\n98#2,6:101\n104#2,5:128\n98#2,6:133\n104#2,5:160\n98#2,6:165\n104#2,5:192\n98#2,6:197\n104#2,5:224\n98#2,6:229\n104#2,5:256\n98#2,6:261\n104#2,5:288\n98#2,6:293\n104#2,5:320\n98#2,6:325\n104#2,5:352\n98#2,6:357\n104#2,5:384\n202#3,6:75\n208#3:95\n202#3,6:107\n208#3:127\n202#3,6:139\n208#3:159\n202#3,6:171\n208#3:191\n202#3,6:203\n208#3:223\n202#3,6:235\n208#3:255\n202#3,6:267\n208#3:287\n202#3,6:299\n208#3:319\n202#3,6:331\n208#3:351\n202#3,6:363\n208#3:383\n102#4,14:81\n102#4,14:113\n102#4,14:145\n102#4,14:177\n102#4,14:209\n102#4,14:241\n102#4,14:273\n102#4,14:305\n102#4,14:337\n102#4,14:369\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1\n*L\n29#1:69,6\n29#1:96,5\n35#1:101,6\n35#1:128,5\n38#1:133,6\n38#1:160,5\n41#1:165,6\n41#1:192,5\n48#1:197,6\n48#1:224,5\n49#1:229,6\n49#1:256,5\n50#1:261,6\n50#1:288,5\n51#1:293,6\n51#1:320,5\n60#1:325,6\n60#1:352,5\n65#1:357,6\n65#1:384,5\n29#1:75,6\n29#1:95\n35#1:107,6\n35#1:127\n38#1:139,6\n38#1:159\n41#1:171,6\n41#1:191\n48#1:203,6\n48#1:223\n49#1:235,6\n49#1:255\n50#1:267,6\n50#1:287\n51#1:299,6\n51#1:319\n60#1:331,6\n60#1:351\n65#1:363,6\n65#1:383\n29#1:81,14\n35#1:113,14\n38#1:145,14\n41#1:177,14\n48#1:209,14\n49#1:241,14\n50#1:273,14\n51#1:305,14\n60#1:337,14\n65#1:369,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;

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

    .line 27
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 16

    move-object/from16 v0, p1

    const-class v1, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    const-string v2, "$this$module"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v7, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$1;

    .line 205
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v4

    .line 207
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 109
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/ton/TonController;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v10

    move-object v8, v15

    .line 109
    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v10}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_0
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$2;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$2;

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

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

    .line 38
    invoke-static {}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$3;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$3;

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v3

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_2
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_3
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$5;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$5;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_4
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_5
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$7;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$7;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/auth/AuthManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_6
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$8;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$8;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_7
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$9;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$9;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v3, Lcom/smedialink/storage/data/manager/update/UpdateManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_8
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    sget-object v12, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$10;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$10;

    const/4 v11, 0x0

    .line 205
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 109
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v2, Lcom/smedialink/storage/data/manager/review/AppReviewManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move-object v8, v1

    move-object v13, v15

    .line 109
    invoke-direct/range {v8 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 208
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 104
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 108
    :cond_9
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
