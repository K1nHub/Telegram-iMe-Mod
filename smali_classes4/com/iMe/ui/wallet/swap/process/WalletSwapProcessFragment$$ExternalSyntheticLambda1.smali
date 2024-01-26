.class public final synthetic Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    check-cast p2, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-static {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$r8$lambda$GiPbpSMMXlaVL4G-vh67yzb8J58(Lkotlin/jvm/functions/Function2;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-void
.end method
