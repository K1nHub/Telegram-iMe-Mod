.class public final Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->loadPrivacySettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletPrivacySettingPresenter.kt\ncom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter\n*L\n1#1,111:1\n74#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/Pair;

    .line 112
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 114
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;->getUsersWithAccessToEthAddress()Ljava/util/List;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;->isEthAddressOpenedForEverybody()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$resolveAccessTypeBy(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Z)I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$resolveAccessTypeBy(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Z)I

    move-result p1

    .line 113
    invoke-interface {v0, v1, v2, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessLoadPrivacySettings(Ljava/util/List;II)V

    :cond_0
    return-void
.end method
