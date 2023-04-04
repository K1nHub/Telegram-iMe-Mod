.class final Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBuyCustomPriceBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->$this_with:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->$this_with:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;->$this_with:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->changeExchangeCurrency(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
