.class final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletPrivacySettingPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveWalletAddressSettingsObservable(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletPrivacySettingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,177:1\n82#2,6:178\n18#3:184\n18#4:185\n*S KotlinDebug\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1\n*L\n144#1:178,6\n145#1:184\n145#1:185\n*E\n"
.end annotation


# instance fields
.field final synthetic $allowUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $publicWalletAllowType:I

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iput p2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$publicWalletAllowType:I

    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$allowUsers:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "isNeedChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getCryptoPermissionInteractor$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    move-result-object p1

    .line 140
    iget v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$publicWalletAllowType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$allowUsers:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->manageCryptoPrivacySettings(ZLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getSchedulersProvider$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;

    invoke-direct {v2, v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "viewState: BaseView,\n   \u2026   }\n        result\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
