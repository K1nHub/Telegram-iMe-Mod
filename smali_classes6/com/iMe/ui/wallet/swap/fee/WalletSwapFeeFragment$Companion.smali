.class public final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;
.super Ljava/lang/Object;
.source "WalletSwapFeeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onFeeChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;-><init>(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    .line 373
    invoke-static {v0, p2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$setOnFeeChangedListener$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
