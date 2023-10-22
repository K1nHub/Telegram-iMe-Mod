.class public final synthetic Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    check-cast p2, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-static {v0, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->$r8$lambda$7uUa-jBECk2n7V28lpS7mmid0F4(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-void
.end method
