.class final Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationModule.kt\ncom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n*L\n1#1,36:1\n42#2:37\n*S KotlinDebug\n*F\n+ 1 NavigationModule.kt\ncom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2\n*L\n21#1:37\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;

    invoke-direct {v0}, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;->INSTANCE:Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<name for destructuring parameter 0>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 22
    new-instance p2, Lcom/iMe/navigation/common/router/CommonTabsNavigationRouter;

    invoke-direct {p2, p1}, Lcom/iMe/navigation/common/router/CommonTabsNavigationRouter;-><init>(Z)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p1

    return-object p1
.end method
