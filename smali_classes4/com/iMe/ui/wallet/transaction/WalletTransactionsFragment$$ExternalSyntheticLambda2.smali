.class public final synthetic Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

.field public final synthetic f$1:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

.field public final synthetic f$2:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$2:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    return-void
.end method


# virtual methods
.method public final onLoadMore()V
    .locals 3

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;->f$2:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->$r8$lambda$Upyp3xmZwbl3PCw0sLjzTHpLdUc(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method
