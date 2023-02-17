.class public final synthetic Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    return-void
.end method
