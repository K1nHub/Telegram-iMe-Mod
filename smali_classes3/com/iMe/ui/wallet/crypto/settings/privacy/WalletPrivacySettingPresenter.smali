.class public final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletPrivacySettingPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletPrivacySettingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,177:1\n63#2,12:178\n63#2,12:190\n82#2,6:202\n82#2,6:208\n18#3:214\n18#3:215\n*S KotlinDebug\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter\n*L\n85#1:178,12\n109#1:190,12\n120#1:202,6\n126#1:208,6\n135#1:214\n152#1:215\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final settingsType:I


# direct methods
.method public static synthetic $r8$lambda$EB69nNfLalG6EUaMBKWF10f1Dlk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveAccountRankSettingsObservable$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EeF1R6ip_8i3fC8-rkFuZ7splDk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveWalletAddressSettingsObservable$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VnzJrsFyG5kq6rZ5xuxC3XxIH-0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->loadPrivacySettings$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f-vyrxl8bUvIXZSDAEaIkMVg2s0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->savePrivacySettings$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pLi0C_OgqDqhYoWBUeVfXdUvGAE(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveSettings$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPermissionInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 25
    iput p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->settingsType:I

    .line 26
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 27
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 28
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method public static final synthetic access$getAccountLevelInteractor$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPermissionInteractor$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$resolveAccessTypeBy(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Z)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resolveAccessTypeBy(Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$saveAccountRankSettingsObservable(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;II)Lio/reactivex/Observable;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveAccountRankSettingsObservable(II)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveSettings(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveSettings(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    return-void
.end method

.method public static final synthetic access$saveWalletAddressSettingsObservable(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveWalletAddressSettingsObservable(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final getAccountRankSettingsObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 124
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getLevelVisibility()Lio/reactivex/Observable;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 82
    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getAccountRankSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;

    invoke-direct {v3, v1, v2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getAccountRankSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "viewState: BaseView,\n   \u2026   }\n        result\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getEverybodyWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 163
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 164
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_everyone_dialog_confirm_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_everyone_dialog_confirm_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getWalletAddressSettingsObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->getCryptoPrivacySettings(Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 82
    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;

    invoke-direct {v3, v1, v2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "viewState: BaseView,\n   \u2026   }\n        result\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final loadPrivacySettings()V
    .locals 5

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->getWalletAddressSettingsObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->getAccountRankSettingsObservable()Lio/reactivex/Observable;

    move-result-object v1

    .line 77
    sget-object v2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$1;->INSTANCE:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$1;

    .line 80
    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 77
    invoke-static {v0, v1, v3}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "zip(\n                get\u2026(schedulersProvider.ui())"

    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 94
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadPrivacySettings$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final resolveAccessTypeBy(Z)I
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final saveAccountRankSettingsObservable(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 154
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1;

    invoke-direct {v0, p0, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;I)V

    new-instance p2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "private fun saveAccountR\u2026essObservable()\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final saveAccountRankSettingsObservable$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final savePrivacySettings$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final saveSettings(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;->INSTANCE:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;

    .line 104
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 101
    invoke-static {p1, p2, v1}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "zip(\n            walletA\u2026(schedulersProvider.ui())"

    .line 104
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 114
    invoke-static {p0, p1, v2, p2, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final saveSettings$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final saveWalletAddressSettingsObservable(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;II)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    if-ne p3, p4, :cond_1

    .line 134
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p3, "just(this)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance p3, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;

    invoke-direct {p3, p0, p4, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;ILjava/util/ArrayList;)V

    new-instance p2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "private fun saveWalletAd\u2026bservable()\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final saveWalletAddressSettingsObservable$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->settingsType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->loadPrivacySettings()V

    :cond_0
    return-void
.end method

.method public final savePrivacySettings(Ljava/util/ArrayList;Ljava/util/ArrayList;IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;IIII)V"
        }
    .end annotation

    const-string v0, "prevAllowUsers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowUsers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;IIII)V

    if-eq p3, p4, :cond_0

    if-nez p4, :cond_0

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->getEverybodyWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p2

    new-instance p3, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
