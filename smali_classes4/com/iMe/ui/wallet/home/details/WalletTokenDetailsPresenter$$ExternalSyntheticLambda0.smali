.class public final synthetic Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/iMe/model/staking/StakingDetailsItem;

.field public final synthetic f$1:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/model/staking/StakingDetailsItem;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/model/staking/StakingDetailsItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->$r8$lambda$n0cH15FlY59JZK3MqUvgb4NbYl0(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method
