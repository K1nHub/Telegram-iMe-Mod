.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$lambda$36$lambda$26$lambda$25$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 CreateCryptoBoxFragment.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n359#2:98\n71#3:99\n77#4:100\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$lambda$36$lambda$26$lambda$25$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$lambda$36$lambda$26$lambda$25$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;)Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onCapacityChanged(Ljava/lang/String;)V

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
