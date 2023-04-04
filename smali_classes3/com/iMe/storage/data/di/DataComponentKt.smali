.class public final Lcom/iMe/storage/data/di/DataComponentKt;
.super Ljava/lang/Object;
.source "DataComponent.kt"


# static fields
.field private static dataModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/koin/core/module/Module;

    .line 7
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getNetworkModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/storage/data/di/module/RepositoryModuleKt;->getRepositoryModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 8
    invoke-static {}, Lcom/iMe/storage/data/di/module/UtilsModuleKt;->getDataUtilsModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/storage/data/di/module/FirebaseModuleKt;->getFirebaseModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    invoke-static {}, Lcom/iMe/storage/data/di/module/DatabaseModuleKt;->getDatabaseModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/storage/data/di/module/StorageModuleKt;->getDataStorageModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 10
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getDataManagerModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getDataSourceModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/DataComponentKt;->dataModules:Ljava/util/List;

    return-void
.end method

.method public static final getDataModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/iMe/storage/data/di/DataComponentKt;->dataModules:Ljava/util/List;

    return-object v0
.end method
