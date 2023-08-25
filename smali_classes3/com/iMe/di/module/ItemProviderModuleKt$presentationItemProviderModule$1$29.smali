.class final Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;
.super Lkotlin/jvm/internal/Lambda;
.source "ItemProviderModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;

    invoke-direct {v0}, Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;-><init>()V

    sput-object v0, Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;->INSTANCE:Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;
    .locals 1

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p1, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;

    invoke-direct {p1}, Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/ItemProviderModuleKt$presentationItemProviderModule$1$29;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/adapter/provider/StakingDashboardProvider;

    move-result-object p1

    return-object p1
.end method
