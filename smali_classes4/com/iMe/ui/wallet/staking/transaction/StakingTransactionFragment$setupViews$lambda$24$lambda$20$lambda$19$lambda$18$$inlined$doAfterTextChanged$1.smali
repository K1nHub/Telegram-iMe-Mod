.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 StakingTransactionFragment.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n348#2,2:98\n71#3:100\n77#4:101\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getPresenter(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onAmountChanged(Ljava/lang/String;)V

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
