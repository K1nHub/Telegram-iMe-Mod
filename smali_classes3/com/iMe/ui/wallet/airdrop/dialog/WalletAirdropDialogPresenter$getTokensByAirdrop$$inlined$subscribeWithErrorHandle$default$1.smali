.class public final Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->getTokensByAirdrop(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletAirdropDialogPresenter.kt\ncom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter\n*L\n1#1,111:1\n57#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$getPreferenceHelper$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$getPreferenceHelper$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$enableWalletMenuItem(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 117
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->airdrop_success_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->airdrop_success_dialog_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->access$handleErrors(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    :cond_1
    :goto_0
    return-void
.end method
