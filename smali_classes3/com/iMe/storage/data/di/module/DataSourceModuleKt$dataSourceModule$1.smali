.class final Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DataSourceModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/di/module/DataSourceModuleKt;
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
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,105:1\n103#2,6:106\n109#2,5:133\n103#2,6:138\n109#2,5:165\n103#2,6:170\n109#2,5:197\n103#2,6:202\n109#2,5:229\n103#2,6:234\n109#2,5:261\n103#2,6:266\n109#2,5:293\n103#2,6:298\n109#2,5:325\n103#2,6:330\n109#2,5:357\n103#2,6:362\n109#2,5:389\n103#2,6:394\n109#2,5:421\n103#2,6:426\n109#2,5:453\n103#2,6:458\n109#2,5:485\n201#3,6:112\n207#3:132\n201#3,6:144\n207#3:164\n201#3,6:176\n207#3:196\n201#3,6:208\n207#3:228\n201#3,6:240\n207#3:260\n201#3,6:272\n207#3:292\n201#3,6:304\n207#3:324\n201#3,6:336\n207#3:356\n201#3,6:368\n207#3:388\n201#3,6:400\n207#3:420\n201#3,6:432\n207#3:452\n201#3,6:464\n207#3:484\n105#4,14:118\n105#4,14:150\n105#4,14:182\n105#4,14:214\n105#4,14:246\n105#4,14:278\n105#4,14:310\n105#4,14:342\n105#4,14:374\n105#4,14:406\n105#4,14:438\n105#4,14:470\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1\n*L\n40#1:106,6\n40#1:133,5\n47#1:138,6\n47#1:165,5\n52#1:170,6\n52#1:197,5\n57#1:202,6\n57#1:229,5\n62#1:234,6\n62#1:261,5\n71#1:266,6\n71#1:293,5\n77#1:298,6\n77#1:325,5\n83#1:330,6\n83#1:357,5\n90#1:362,6\n90#1:389,5\n93#1:394,6\n93#1:421,5\n96#1:426,6\n96#1:453,5\n99#1:458,6\n99#1:485,5\n40#1:112,6\n40#1:132\n47#1:144,6\n47#1:164\n52#1:176,6\n52#1:196\n57#1:208,6\n57#1:228\n62#1:240,6\n62#1:260\n71#1:272,6\n71#1:292\n77#1:304,6\n77#1:324\n83#1:336,6\n83#1:356\n90#1:368,6\n90#1:388\n93#1:400,6\n93#1:420\n96#1:432,6\n96#1:452\n99#1:464,6\n99#1:484\n40#1:118,14\n47#1:150,14\n52#1:182,14\n57#1:214,14\n62#1:246,14\n71#1:278,14\n77#1:310,14\n83#1:342,14\n90#1:374,14\n93#1:406,14\n96#1:438,14\n99#1:470,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;

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

    .line 37
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 16

    move-object/from16 v0, p1

    const-class v1, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    const-string v2, "$this$module"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v7, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;

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
    const-class v3, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

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

    .line 47
    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$2;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$2;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v4, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

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

    .line 52
    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$3;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$3;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v4, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

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

    .line 57
    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v4, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

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

    .line 62
    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;

    const/4 v11, 0x0

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v4, Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

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

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_4
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 71
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getEVM_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$6;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$6;

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

    if-eqz v3, :cond_5

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_5
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 77
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getTON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$7;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$7;

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

    if-eqz v3, :cond_6

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_6
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 83
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getTRON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;

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

    if-eqz v3, :cond_7

    .line 111
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_7
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v3, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 90
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getDEX_SWAP_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$9;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$9;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;

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

    .line 93
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getETH_APPROVE_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$10;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$10;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

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

    .line 96
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getETH_CANCEL_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v11

    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;

    .line 204
    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v9

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;

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

    .line 99
    sget-object v12, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$12;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$12;

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
    const-class v2, Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;

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
