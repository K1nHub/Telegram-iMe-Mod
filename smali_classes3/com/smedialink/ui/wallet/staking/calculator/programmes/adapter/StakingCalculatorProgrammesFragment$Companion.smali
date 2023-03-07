.class public final Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;
.super Ljava/lang/Object;
.source "StakingCalculatorProgrammesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/staking/StakingDetailsItem;",
            ">;)",
            "Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;"
        }
    .end annotation

    const-string v0, "onStakingSelectedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;-><init>(Lorg/fork/utils/Callbacks$Callback1;)V

    return-object v0
.end method
