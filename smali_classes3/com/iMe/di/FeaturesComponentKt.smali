.class public final Lcom/iMe/di/FeaturesComponentKt;
.super Ljava/lang/Object;
.source "FeaturesComponent.kt"


# static fields
.field private static featureModules:Ljava/util/List;
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

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/koin/core/module/Module;

    .line 6
    invoke-static {}, Lcom/iMe/di/module/FeatureModuleKt;->getDevToolsFeature()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/FeatureModuleKt;->getSocialfeature()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/iMe/di/module/FeatureModuleKt;->getProfileFeature()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/FeaturesComponentKt;->featureModules:Ljava/util/List;

    return-void
.end method

.method public static final getFeatureModules()Ljava/util/List;
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
    sget-object v0, Lcom/iMe/di/FeaturesComponentKt;->featureModules:Ljava/util/List;

    return-object v0
.end method
