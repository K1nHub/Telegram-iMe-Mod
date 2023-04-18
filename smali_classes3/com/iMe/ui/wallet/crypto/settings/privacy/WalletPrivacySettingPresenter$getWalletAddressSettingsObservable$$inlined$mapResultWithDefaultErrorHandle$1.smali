.class public final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->getWalletAddressSettingsObservable()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$mapResultWithDefaultErrorHandle$1\n*L\n1#1,111:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field final synthetic $viewState:Lcom/iMe/ui/base/mvp/base/BaseView;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;->$resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lcom/iMe/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    move-object v1, p1

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;->$resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
