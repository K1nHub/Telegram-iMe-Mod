.class final Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;
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
        "Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationModule.kt\ncom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,44:1\n129#2,5:45\n129#2,5:50\n129#2,5:55\n129#2,5:60\n129#2,5:65\n*S KotlinDebug\n*F\n+ 1 NavigationModule.kt\ncom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4\n*L\n30#1:45,5\n31#1:50,5\n32#1:55,5\n33#1:60,5\n34#1:65,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;

    invoke-direct {v0}, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;-><init>()V

    sput-object v0, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;->INSTANCE:Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 7

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p2, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    .line 133
    const-class v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 133
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 133
    const-class v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 133
    const-class v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 133
    const-class v0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-object v1, p2

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;-><init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/NavigationModuleKt$presentationNavigationModule$1$4;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object p1

    return-object p1
.end method
