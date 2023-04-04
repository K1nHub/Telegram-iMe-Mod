.class public final Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 CryptoBuyCustomPriceBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n173#2:98\n71#3:99\n77#4:100\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->calculateExchangeValues(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
