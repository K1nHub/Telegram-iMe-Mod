.class final Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;
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
        "Lcom/iMe/ui/wallet/send/WalletSendPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,901:1\n44#2,2:902\n129#3,5:904\n129#3,5:909\n129#3,5:914\n129#3,5:919\n129#3,5:924\n129#3,5:929\n129#3,5:934\n129#3,5:939\n129#3,5:944\n129#3,5:949\n129#3,5:954\n*S KotlinDebug\n*F\n+ 1 PresenterModule.kt\ncom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12\n*L\n245#1:902,2\n249#1:904,5\n250#1:909,5\n251#1:914,5\n252#1:919,5\n253#1:924,5\n254#1:929,5\n255#1:934,5\n256#1:939,5\n257#1:944,5\n258#1:949,5\n259#1:954,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;

    invoke-direct {v0}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;-><init>()V

    sput-object v0, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;->INSTANCE:Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "$this$factory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class v2, Lcom/iMe/model/wallet/send/WalletSendScreenType;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 45
    const-class v2, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    move-object v6, v1

    check-cast v6, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 250
    move-object v7, v1

    check-cast v7, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 251
    move-object v8, v1

    check-cast v8, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 252
    move-object v9, v1

    check-cast v9, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    move-object v10, v1

    check-cast v10, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 254
    move-object v11, v1

    check-cast v11, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 255
    move-object v12, v1

    check-cast v12, Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    move-object v13, v1

    check-cast v13, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 133
    const-class v1, Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    move-object v14, v1

    check-cast v14, Lcom/iMe/gateway/TelegramControllersGateway;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    move-object v15, v1

    check-cast v15, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    move-object/from16 v16, v0

    check-cast v16, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 246
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-object v3, v0

    invoke-direct/range {v3 .. v16}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;-><init>(Lcom/iMe/model/wallet/send/WalletSendScreenType;Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/PresenterModuleKt$presentationPresenterModule$1$12;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p1

    return-object p1
.end method
