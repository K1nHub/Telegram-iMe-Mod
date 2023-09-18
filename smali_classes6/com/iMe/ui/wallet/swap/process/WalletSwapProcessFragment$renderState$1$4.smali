.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;
.super Landroid/os/CountDownTimer;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_with:Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method public static synthetic $r8$lambda$DZGZlHDzWRbPzLORXuVc6aFrW3Y(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->onTick$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->$this_with:Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const-wide/16 p1, 0xbb8

    const-wide/16 v0, 0x3e8

    .line 294
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private static final onTick$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    return-void
.end method

.method public onTick(J)V
    .locals 13

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    .line 301
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->$this_with:Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    const-string/jumbo v2, "viewActionButtons"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    div-long/2addr p1, v0

    .line 302
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    new-instance v8, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4$$ExternalSyntheticLambda0;

    invoke-direct {v8, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x6e

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method
