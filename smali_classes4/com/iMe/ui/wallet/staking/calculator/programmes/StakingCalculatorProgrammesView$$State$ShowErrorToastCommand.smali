.class public Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field public final result:Lcom/iMe/storage/domain/model/Result$Error;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    .line 299
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showErrorToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 301
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;->result:Lcom/iMe/storage/domain/model/Result$Error;

    .line 302
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;->result:Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 293
    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$ShowErrorToastCommand;->apply(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;)V

    return-void
.end method
