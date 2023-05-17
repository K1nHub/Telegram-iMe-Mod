.class public final Lcom/iMe/di/module/FeatureModuleKt;
.super Ljava/lang/Object;
.source "FeatureModule.kt"


# static fields
.field private static devToolsFeature:Lorg/koin/core/module/Module;

.field private static profileFeature:Lorg/koin/core/module/Module;

.field private static socialfeature:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt$devToolsFeature$1;->INSTANCE:Lcom/iMe/di/module/FeatureModuleKt$devToolsFeature$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/module/FeatureModuleKt;->devToolsFeature:Lorg/koin/core/module/Module;

    .line 26
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt$socialfeature$1;->INSTANCE:Lcom/iMe/di/module/FeatureModuleKt$socialfeature$1;

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/module/FeatureModuleKt;->socialfeature:Lorg/koin/core/module/Module;

    .line 42
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt$profileFeature$1;->INSTANCE:Lcom/iMe/di/module/FeatureModuleKt$profileFeature$1;

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/module/FeatureModuleKt;->profileFeature:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getDevToolsFeature()Lorg/koin/core/module/Module;
    .locals 1

    .line 20
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt;->devToolsFeature:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getProfileFeature()Lorg/koin/core/module/Module;
    .locals 1

    .line 42
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt;->profileFeature:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getSocialfeature()Lorg/koin/core/module/Module;
    .locals 1

    .line 26
    sget-object v0, Lcom/iMe/di/module/FeatureModuleKt;->socialfeature:Lorg/koin/core/module/Module;

    return-object v0
.end method
