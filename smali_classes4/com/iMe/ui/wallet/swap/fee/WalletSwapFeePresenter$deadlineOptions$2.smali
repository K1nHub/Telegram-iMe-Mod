.class final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;
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
        "Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;->INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;

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

    .line 41
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;->invoke()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 41
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    return-object v0
.end method
