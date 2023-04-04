.class public final synthetic Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$r8$lambda$tnXAxnsH4Bgv_l2OdAFtE-VYUiE(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
