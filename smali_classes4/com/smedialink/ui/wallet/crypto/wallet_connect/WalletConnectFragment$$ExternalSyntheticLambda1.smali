.class public final synthetic Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$r8$lambda$24syjw0JK2RJiAe1lEtSDOfRcK0(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
