.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->prepareCryptoBoxCreation(Lorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter\n*L\n1#1,132:1\n252#2,6:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $chat$inlined:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->$chat$inlined:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->$chat$inlined:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_create_user_not_owner:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->openCryptoBoxCreationScreen()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;->$chat$inlined:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$onWalletBotAdminRightsRequired(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_0
    return-void
.end method
