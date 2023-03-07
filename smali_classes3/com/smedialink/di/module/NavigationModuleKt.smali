.class public final Lcom/smedialink/di/module/NavigationModuleKt;
.super Ljava/lang/Object;
.source "NavigationModule.kt"


# static fields
.field private static final COMMON_BOTTOM_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final COMMON_TABS_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final WALLET_ROOT_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static presentationNavigationModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "COMMON_BOTTOM_NAVIGATOR"

    .line 15
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->COMMON_BOTTOM_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "COMMON_TABS_NAVIGATOR"

    .line 16
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->COMMON_TABS_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "WALLET_ROOT_NAVIGATOR"

    .line 17
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->WALLET_ROOT_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    .line 19
    sget-object v0, Lcom/smedialink/di/module/NavigationModuleKt$presentationNavigationModule$1;->INSTANCE:Lcom/smedialink/di/module/NavigationModuleKt$presentationNavigationModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->presentationNavigationModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getCOMMON_BOTTOM_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 15
    sget-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->COMMON_BOTTOM_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 16
    sget-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->COMMON_TABS_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getPresentationNavigationModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 19
    sget-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->presentationNavigationModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getWALLET_ROOT_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 17
    sget-object v0, Lcom/smedialink/di/module/NavigationModuleKt;->WALLET_ROOT_NAVIGATOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method
