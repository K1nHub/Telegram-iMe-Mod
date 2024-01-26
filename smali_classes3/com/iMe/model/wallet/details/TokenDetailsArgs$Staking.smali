.class public final Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;
.super Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.source "TokenDetailsArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staking"
.end annotation


# instance fields
.field private stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-void
.end method


# virtual methods
.method public final getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-object v0
.end method

.method public final setStakingDetails(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-void
.end method
