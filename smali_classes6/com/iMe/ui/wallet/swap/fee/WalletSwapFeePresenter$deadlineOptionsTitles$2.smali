.class final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;-><init>(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->invoke()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$initDeadlineTitles(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
