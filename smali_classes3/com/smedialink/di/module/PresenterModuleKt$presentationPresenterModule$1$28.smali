.class final Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;
.super Lkotlin/jvm/internal/Lambda;
.source "PresenterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterModule.kt\ncom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,410:1\n42#2:411\n127#3,5:412\n*S KotlinDebug\n*F\n+ 1 PresenterModule.kt\ncom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28\n*L\n220#1:411\n220#1:412,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;

    invoke-direct {v0}, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;->INSTANCE:Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;
    .locals 6

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dstr$settingsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p2

    .line 220
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 220
    move-object v3, p2

    check-cast v3, Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 220
    move-object v5, p2

    check-cast v5, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 220
    move-object v4, p2

    check-cast v4, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    move-object v2, p1

    check-cast v2, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    new-instance p1, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;-><init>(ILcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$28;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    move-result-object p1

    return-object p1
.end method
