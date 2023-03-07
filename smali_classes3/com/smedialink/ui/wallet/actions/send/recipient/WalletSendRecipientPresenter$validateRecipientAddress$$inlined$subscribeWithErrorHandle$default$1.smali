.class public final Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->validateRecipientAddress(Ljava/lang/String;Z)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendRecipientPresenter.kt\ncom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter\n*L\n1#1,111:1\n65#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v2, p1, v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_recipient_validation_address_error:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
