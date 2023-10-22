.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;
.super Ljava/lang/Object;
.source "StakingTransactionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;-><init>(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-object v0
.end method
