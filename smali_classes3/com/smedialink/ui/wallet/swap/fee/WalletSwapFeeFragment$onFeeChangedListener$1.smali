.class final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment;-><init>(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;-><init>()V

    sput-object v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;->INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;->invoke(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
