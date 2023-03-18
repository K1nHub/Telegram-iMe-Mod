.class public final Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$mapResultWithDefaultErrorHandle$1\n*L\n1#1,111:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field final synthetic $viewState:Lcom/smedialink/ui/base/mvp/base/BaseView;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;->$viewState:Lcom/smedialink/ui/base/mvp/base/BaseView;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;->$resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;->$viewState:Lcom/smedialink/ui/base/mvp/base/BaseView;

    move-object v1, p1

    check-cast v1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;->$resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
