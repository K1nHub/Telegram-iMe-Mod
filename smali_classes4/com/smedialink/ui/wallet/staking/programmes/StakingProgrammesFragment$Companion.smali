.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;
.super Ljava/lang/Object;
.source "StakingProgrammesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/storage/domain/model/staking/StakingTabType;)Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;
    .locals 1

    const-string v0, "stakingTabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingTabType;)V

    return-object v0
.end method
