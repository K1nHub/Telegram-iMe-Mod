.class final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;-><init>(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->invoke()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$initDeadlineTitles(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
