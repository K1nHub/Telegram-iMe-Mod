.class public final Lcom/iMe/di/PresentationComponentKt;
.super Ljava/lang/Object;
.source "PresentationComponent.kt"


# static fields
.field private static presentationModules:Ljava/util/List;
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

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/koin/core/module/Module;

    .line 6
    invoke-static {}, Lcom/iMe/di/module/UtilsModuleKt;->getPresentationUtilsModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/PresenterModuleKt;->getPresentationPresenterModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/ManagerModuleKt;->getPresentationManagerModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    invoke-static {}, Lcom/iMe/di/module/AdapterModuleKt;->getPresentationAdapterModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/TelegramModuleKt;->getTelegramModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getPresentationNavigationModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/ItemProviderModuleKt;->getPresentationItemProviderModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/PresentationComponentKt;->presentationModules:Ljava/util/List;

    return-void
.end method

.method public static final getPresentationModules()Ljava/util/List;
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
    sget-object v0, Lcom/iMe/di/PresentationComponentKt;->presentationModules:Ljava/util/List;

    return-object v0
.end method
