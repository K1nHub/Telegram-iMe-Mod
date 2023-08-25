.class public final Lcom/iMe/di/module/ItemProviderModuleKt;
.super Ljava/lang/Object;
.source "ItemProviderModule.kt"


# static fields
.field private static presentationItemProviderModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    sget-object v0, Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1;->INSTANCE:Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/di/module/ItemProviderModuleKt;->presentationItemProviderModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getPresentationItemProviderModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 47
    sget-object v0, Lcom/iMe/di/module/ItemProviderModuleKt;->presentationItemProviderModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
