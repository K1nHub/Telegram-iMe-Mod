.class final Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;
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
        "Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,433:1\n42#2:434\n127#3,5:435\n*S KotlinDebug\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28\n*L\n235#1:434\n235#1:435,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;

    invoke-direct {v0}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;-><init>()V

    sput-object v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;->INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;
    .locals 4

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class v0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 131
    const-class v0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    check-cast v0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 131
    const-class v2, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    check-cast v2, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;

    .line 131
    const-class v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 235
    check-cast p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    invoke-direct {v1, p2, v0, p1, v2}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;-><init>(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/utils/validator/wallet/CustomPriceValidator;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$28;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    move-result-object p1

    return-object p1
.end method
