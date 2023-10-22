.class public final synthetic Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

.field public final synthetic f$1:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;->f$0:Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;->f$1:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;->f$0:Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;->f$1:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$r8$lambda$rHZ0It2h7BjzypW0XWxXoHkSD5c(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
