.class final Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/di/module/NetworkModuleKt;
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
    value = "SMAP\nNetworkModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkModule.kt\ncom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,214:1\n103#2,6:215\n109#2,5:242\n103#2,6:247\n109#2,5:274\n103#2,6:279\n109#2,5:306\n103#2,6:311\n109#2,5:338\n103#2,6:343\n109#2,5:370\n103#2,6:375\n109#2,5:402\n103#2,6:407\n109#2,5:434\n103#2,6:439\n109#2,5:466\n103#2,6:471\n109#2,5:498\n103#2,6:503\n109#2,5:530\n103#2,6:535\n109#2,5:562\n103#2,6:567\n109#2,5:594\n103#2,6:599\n109#2,5:626\n103#2,6:631\n109#2,5:658\n103#2,6:663\n109#2,5:690\n103#2,6:695\n109#2,5:722\n103#2,6:727\n109#2,5:754\n103#2,6:759\n109#2,5:786\n103#2,6:791\n109#2,5:818\n103#2,6:823\n109#2,5:850\n103#2,6:855\n109#2,5:882\n103#2,6:887\n109#2,5:914\n103#2,6:919\n109#2,5:946\n103#2,6:951\n109#2,5:978\n103#2,6:983\n109#2,5:1010\n103#2,6:1015\n109#2,5:1042\n103#2,6:1047\n109#2,5:1074\n103#2,6:1079\n109#2,5:1106\n103#2,6:1111\n109#2,5:1138\n103#2,6:1143\n109#2,5:1170\n103#2,6:1175\n109#2,5:1202\n103#2,6:1207\n109#2,5:1234\n103#2,6:1239\n109#2,5:1266\n103#2,6:1271\n109#2,5:1298\n103#2,6:1303\n109#2,5:1330\n103#2,6:1335\n109#2,5:1362\n103#2,6:1367\n109#2,5:1394\n103#2,6:1399\n109#2,5:1426\n103#2,6:1431\n109#2,5:1458\n103#2,6:1463\n109#2,5:1490\n103#2,6:1495\n109#2,5:1522\n201#3,6:221\n207#3:241\n201#3,6:253\n207#3:273\n201#3,6:285\n207#3:305\n201#3,6:317\n207#3:337\n201#3,6:349\n207#3:369\n201#3,6:381\n207#3:401\n201#3,6:413\n207#3:433\n201#3,6:445\n207#3:465\n201#3,6:477\n207#3:497\n201#3,6:509\n207#3:529\n201#3,6:541\n207#3:561\n201#3,6:573\n207#3:593\n201#3,6:605\n207#3:625\n201#3,6:637\n207#3:657\n201#3,6:669\n207#3:689\n201#3,6:701\n207#3:721\n201#3,6:733\n207#3:753\n201#3,6:765\n207#3:785\n201#3,6:797\n207#3:817\n201#3,6:829\n207#3:849\n201#3,6:861\n207#3:881\n201#3,6:893\n207#3:913\n201#3,6:925\n207#3:945\n201#3,6:957\n207#3:977\n201#3,6:989\n207#3:1009\n201#3,6:1021\n207#3:1041\n201#3,6:1053\n207#3:1073\n201#3,6:1085\n207#3:1105\n201#3,6:1117\n207#3:1137\n201#3,6:1149\n207#3:1169\n201#3,6:1181\n207#3:1201\n201#3,6:1213\n207#3:1233\n201#3,6:1245\n207#3:1265\n201#3,6:1277\n207#3:1297\n201#3,6:1309\n207#3:1329\n201#3,6:1341\n207#3:1361\n201#3,6:1373\n207#3:1393\n201#3,6:1405\n207#3:1425\n201#3,6:1437\n207#3:1457\n201#3,6:1469\n207#3:1489\n201#3,6:1501\n207#3:1521\n105#4,14:227\n105#4,14:259\n105#4,14:291\n105#4,14:323\n105#4,14:355\n105#4,14:387\n105#4,14:419\n105#4,14:451\n105#4,14:483\n105#4,14:515\n105#4,14:547\n105#4,14:579\n105#4,14:611\n105#4,14:643\n105#4,14:675\n105#4,14:707\n105#4,14:739\n105#4,14:771\n105#4,14:803\n105#4,14:835\n105#4,14:867\n105#4,14:899\n105#4,14:931\n105#4,14:963\n105#4,14:995\n105#4,14:1027\n105#4,14:1059\n105#4,14:1091\n105#4,14:1123\n105#4,14:1155\n105#4,14:1187\n105#4,14:1219\n105#4,14:1251\n105#4,14:1283\n105#4,14:1315\n105#4,14:1347\n105#4,14:1379\n105#4,14:1411\n105#4,14:1443\n105#4,14:1475\n105#4,14:1507\n*S KotlinDebug\n*F\n+ 1 NetworkModule.kt\ncom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1\n*L\n73#1:215,6\n73#1:242,5\n74#1:247,6\n74#1:274,5\n76#1:279,6\n76#1:306,5\n77#1:311,6\n77#1:338,5\n83#1:343,6\n83#1:370,5\n85#1:375,6\n85#1:402,5\n86#1:407,6\n86#1:434,5\n87#1:439,6\n87#1:466,5\n89#1:471,6\n89#1:498,5\n96#1:503,6\n96#1:530,5\n103#1:535,6\n103#1:562,5\n116#1:567,6\n116#1:594,5\n117#1:599,6\n117#1:626,5\n118#1:631,6\n118#1:658,5\n119#1:663,6\n119#1:690,5\n120#1:695,6\n120#1:722,5\n121#1:727,6\n121#1:754,5\n122#1:759,6\n122#1:786,5\n123#1:791,6\n123#1:818,5\n124#1:823,6\n124#1:850,5\n125#1:855,6\n125#1:882,5\n126#1:887,6\n126#1:914,5\n127#1:919,6\n127#1:946,5\n128#1:951,6\n128#1:978,5\n129#1:983,6\n129#1:1010,5\n131#1:1015,6\n131#1:1042,5\n132#1:1047,6\n132#1:1074,5\n133#1:1079,6\n133#1:1106,5\n134#1:1111,6\n134#1:1138,5\n135#1:1143,6\n135#1:1170,5\n136#1:1175,6\n136#1:1202,5\n137#1:1207,6\n137#1:1234,5\n138#1:1239,6\n138#1:1266,5\n139#1:1271,6\n139#1:1298,5\n140#1:1303,6\n140#1:1330,5\n141#1:1335,6\n141#1:1362,5\n142#1:1367,6\n142#1:1394,5\n148#1:1399,6\n148#1:1426,5\n149#1:1431,6\n149#1:1458,5\n150#1:1463,6\n150#1:1490,5\n151#1:1495,6\n151#1:1522,5\n73#1:221,6\n73#1:241\n74#1:253,6\n74#1:273\n76#1:285,6\n76#1:305\n77#1:317,6\n77#1:337\n83#1:349,6\n83#1:369\n85#1:381,6\n85#1:401\n86#1:413,6\n86#1:433\n87#1:445,6\n87#1:465\n89#1:477,6\n89#1:497\n96#1:509,6\n96#1:529\n103#1:541,6\n103#1:561\n116#1:573,6\n116#1:593\n117#1:605,6\n117#1:625\n118#1:637,6\n118#1:657\n119#1:669,6\n119#1:689\n120#1:701,6\n120#1:721\n121#1:733,6\n121#1:753\n122#1:765,6\n122#1:785\n123#1:797,6\n123#1:817\n124#1:829,6\n124#1:849\n125#1:861,6\n125#1:881\n126#1:893,6\n126#1:913\n127#1:925,6\n127#1:945\n128#1:957,6\n128#1:977\n129#1:989,6\n129#1:1009\n131#1:1021,6\n131#1:1041\n132#1:1053,6\n132#1:1073\n133#1:1085,6\n133#1:1105\n134#1:1117,6\n134#1:1137\n135#1:1149,6\n135#1:1169\n136#1:1181,6\n136#1:1201\n137#1:1213,6\n137#1:1233\n138#1:1245,6\n138#1:1265\n139#1:1277,6\n139#1:1297\n140#1:1309,6\n140#1:1329\n141#1:1341,6\n141#1:1361\n142#1:1373,6\n142#1:1393\n148#1:1405,6\n148#1:1425\n149#1:1437,6\n149#1:1457\n150#1:1469,6\n150#1:1489\n151#1:1501,6\n151#1:1521\n73#1:227,14\n74#1:259,14\n76#1:291,14\n77#1:323,14\n83#1:355,14\n85#1:387,14\n86#1:419,14\n87#1:451,14\n89#1:483,14\n96#1:515,14\n103#1:547,14\n116#1:579,14\n117#1:611,14\n118#1:643,14\n119#1:675,14\n120#1:707,14\n121#1:739,14\n122#1:771,14\n123#1:803,14\n124#1:835,14\n125#1:867,14\n126#1:899,14\n127#1:931,14\n128#1:963,14\n129#1:995,14\n131#1:1027,14\n132#1:1059,14\n133#1:1091,14\n134#1:1123,14\n135#1:1155,14\n136#1:1187,14\n137#1:1219,14\n138#1:1251,14\n139#1:1283,14\n140#1:1315,14\n141#1:1347,14\n142#1:1379,14\n148#1:1411,14\n149#1:1443,14\n150#1:1475,14\n151#1:1507,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;

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

    .line 69
    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 17

    move-object/from16 v0, p1

    const-class v1, Lretrofit2/Retrofit;

    const-class v2, Lokhttp3/Interceptor;

    const-string v3, "$this$module"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v8, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$1;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$1;

    .line 204
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v5

    .line 206
    sget-object v16, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 112
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v4, Lokhttp3/Cache;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, v11

    move-object/from16 v9, v16

    .line 112
    invoke-direct/range {v4 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v11}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_0
    new-instance v5, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v5, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 74
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$2;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$2;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v5, Lcom/google/gson/Gson;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 76
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getDEFAULT_CLIENT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$3;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$3;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v5, Lokhttp3/OkHttpClient;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_2
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 77
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getSERVER_CLIENT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$4;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$4;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v5, Lokhttp3/OkHttpClient;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_3
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 83
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getTON_CONFIG_CLIENT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$5;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v5, Lokhttp3/OkHttpClient;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_4
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 85
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getLOGGING_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$6;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$6;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_5
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 86
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getMETADATA_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$7;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$7;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_6
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 87
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getERROR_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$8;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$8;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v4

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_7
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v4, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 89
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getKIKLIKO_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$9;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$9;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v2

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_8
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v2, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 96
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getGOOGLE_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$10;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$10;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v2

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 111
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_9
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v2, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 103
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getSERVER_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v12

    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$11;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$11;

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v2

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_a
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v2, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 116
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$12;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$12;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/SwapApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

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

    .line 117
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$13;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$13;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/PinCodeApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_c
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 118
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$14;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$14;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_d
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 119
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$15;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$15;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/PermissionApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_e
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 120
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$16;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$16;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/SimplexApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_f
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 121
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$17;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$17;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/CancelApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_10
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 122
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$18;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$18;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/BoostApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_11
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 123
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$19;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$19;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/AccountLevelApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_12
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 124
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$20;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$20;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_13
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 125
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$21;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$21;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/DonationsApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_14
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 126
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$22;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$22;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/WalletApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_15
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 127
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$23;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$23;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_16
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 128
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$24;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$24;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/AirdropApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_17
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 129
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$25;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$25;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/NftApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_18
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 131
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$26;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$26;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_19
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 132
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$27;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$27;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/PushNotificationApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1a
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 133
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$28;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$28;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/ReactionApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1b
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 134
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$29;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$29;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1c
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 135
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$30;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$30;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1d
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 136
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$31;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$31;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/KiklikoApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1e
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 137
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$32;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$32;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_1f
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 138
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$33;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$33;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/CatalogApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_20
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 139
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$34;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$34;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/TwitterApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_21
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 140
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$35;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$35;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/SocialApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_22
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 141
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$36;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$36;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_23
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 142
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$37;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$37;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_24
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 148
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$38;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$38;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_25
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 149
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$39;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$39;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_26
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 150
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$40;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$40;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_27
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 151
    sget-object v13, Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$41;->INSTANCE:Lcom/iMe/storage/data/di/module/NetworkModuleKt$networkModule$1$41;

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v10

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v2, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v14, v16

    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_28
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-void
.end method
