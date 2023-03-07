.class public Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ManageLinksActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StakingCalculatorPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/ManageLinksActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;)V
    .locals 2

    .line 93
    const-class p1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    const-string v0, "stakingCalculatorPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 91
    check-cast p1, Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;->bind(Lorg/telegram/ui/ManageLinksActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ManageLinksActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 98
    check-cast p2, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    iput-object p2, p1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 91
    check-cast p1, Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;->providePresenter(Lorg/telegram/ui/ManageLinksActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/ManageLinksActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ManageLinksActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lorg/telegram/ui/ManageLinksActivity;->provideStakingCalculatorPresenter()Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    move-result-object p1

    return-object p1
.end method
