.class final Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletPrivacySettingPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveWalletAddressSettingsObservable(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;
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
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletPrivacySettingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,160:1\n58#2,6:161\n11#3:167\n18#4:168\n*S KotlinDebug\n*F\n+ 1 WalletPrivacySettingPresenter.kt\ncom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1\n*L\n128#1:161,6\n129#1:167\n129#1:168\n*E\n"
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

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iput p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$publicWalletAllowType:I

    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$allowUsers:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "isNeedChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getCryptoPermissionInteractor$p(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    iget p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$publicWalletAllowType:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v2, p1

    .line 125
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->$allowUsers:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->manageCryptoPrivacySettings$default(Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getSchedulersProvider$p(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;

    invoke-direct {v2, v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V

    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "viewState: BaseView,\n   \u2026ager))\n    }\n    result\n}"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

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

    .line 120
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
