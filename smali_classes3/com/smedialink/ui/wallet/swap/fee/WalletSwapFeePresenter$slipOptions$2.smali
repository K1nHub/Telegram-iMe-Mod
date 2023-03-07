.class final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;
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
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;-><init>()V

    sput-object v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;->INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;->invoke()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 44
    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v0

    return-object v0
.end method
