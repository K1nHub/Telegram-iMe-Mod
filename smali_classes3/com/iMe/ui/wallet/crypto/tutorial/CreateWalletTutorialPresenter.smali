.class public final Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateWalletTutorialPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)V
    .locals 1

    const-string v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    return-void
.end method

.method private final getTutorialPages()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    .line 17
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 18
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 19
    sget v5, Lorg/telegram/messenger/R$raw;->fork_non_custodial:I

    .line 20
    sget v6, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_backup_title:I

    .line 21
    sget v7, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_backup_description:I

    .line 18
    invoke-direct {v1, v5, v6, v7}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    aput-object v1, v0, v4

    .line 23
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 24
    sget v4, Lorg/telegram/messenger/R$raw;->fork_tutorial_check_data:I

    .line 25
    sget v5, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_check_data_title:I

    .line 26
    sget v6, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_check_data_description:I

    .line 23
    invoke-direct {v1, v4, v5, v6}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    aput-object v1, v0, v3

    .line 28
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 29
    sget v3, Lorg/telegram/messenger/R$raw;->fork_tutorial_be_carefull:I

    .line 30
    sget v4, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_carefull_title:I

    .line 31
    sget v5, Lorg/telegram/messenger/R$string;->wallet_create_eth_account_tutorial_carefull_description:I

    .line 28
    invoke-direct {v1, v3, v4, v5}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    if-eqz v0, :cond_1

    new-array v0, v2, [Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 35
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 36
    sget v2, Lorg/telegram/messenger/R$raw;->fork_congratulations:I

    .line 37
    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_success_dialog_title:I

    .line 38
    sget v6, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_success_dialog_description:I

    .line 35
    invoke-direct {v1, v2, v5, v6}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    aput-object v1, v0, v4

    .line 40
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    .line 41
    sget v2, Lorg/telegram/messenger/R$raw;->fork_back_up:I

    .line 42
    sget v4, Lorg/telegram/messenger/R$string;->wallet_eth_backup_info_start_dialog_title:I

    .line 43
    sget v5, Lorg/telegram/messenger/R$string;->wallet_eth_backup_info_start_dialog_description:I

    .line 40
    invoke-direct {v1, v2, v4, v5}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    aput-object v1, v0, v3

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final showTutorial()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->getTutorialPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->showTutorialPages(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->showTutorial()V

    return-void
.end method

.method public final onLastPageActionClick()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    .line 52
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openPasscodeScreen()V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    check-cast v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V

    :cond_1
    :goto_0
    return-void
.end method
