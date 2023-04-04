.class public final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->loadPrivacySettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
        ">;+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletPrivacySettingPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter\n*L\n1#1,111:1\n74#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/Pair;

    .line 112
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 114
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;->getUsersWithAccessToEthAddress()Ljava/util/List;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;->isEthAddressOpenedForEverybody()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$resolveAccessTypeBy(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Z)I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$resolveAccessTypeBy(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Z)I

    move-result p1

    .line 113
    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessLoadPrivacySettings(Ljava/util/List;II)V

    :cond_0
    return-void
.end method
