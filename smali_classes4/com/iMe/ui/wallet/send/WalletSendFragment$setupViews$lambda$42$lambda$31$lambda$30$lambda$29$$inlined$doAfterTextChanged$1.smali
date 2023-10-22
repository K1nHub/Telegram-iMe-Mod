.class public final Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 WalletSendFragment.kt\ncom/iMe/ui/wallet/send/WalletSendFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n569#2,5:98\n71#3:103\n77#4:104\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_setupInputField$inlined:Lorg/telegram/ui/Components/LinkActionView;

.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;->$this_setupInputField$inlined:Lorg/telegram/ui/Components/LinkActionView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->access$getScreenType$p(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/model/wallet/send/WalletSendScreenType;

    move-result-object v0

    sget-object v1, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;->$this_setupInputField$inlined:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->handleClearEditTextButton()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->access$getPresenter(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->validateEnterAddress(Ljava/lang/String;)V

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
