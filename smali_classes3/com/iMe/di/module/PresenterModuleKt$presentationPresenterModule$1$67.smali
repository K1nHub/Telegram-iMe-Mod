.class final Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;
.super Lkotlin/jvm/internal/Lambda;
.source "PresenterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n*L\n1#1,898:1\n44#2:899\n*S KotlinDebug\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67\n*L\n752#1:899\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;

    invoke-direct {v0}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;-><init>()V

    sput-object v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;->INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;
    .locals 1

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<name for destructuring parameter 0>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class p1, Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 752
    new-instance p2, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    invoke-direct {p2, p1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 752
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$67;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    move-result-object p1

    return-object p1
.end method
