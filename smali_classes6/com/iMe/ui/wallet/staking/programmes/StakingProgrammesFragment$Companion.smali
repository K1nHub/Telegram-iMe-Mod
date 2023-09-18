.class public final Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;
.super Ljava/lang/Object;
.source "StakingProgrammesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/storage/domain/model/staking/StakingTabType;)Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;
    .locals 1

    const-string/jumbo v0, "stakingTabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;-><init>(Lcom/iMe/storage/domain/model/staking/StakingTabType;)V

    return-object v0
.end method
