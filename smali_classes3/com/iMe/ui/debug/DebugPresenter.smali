.class public final Lcom/iMe/ui/debug/DebugPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "DebugPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/debug/DebugView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public static synthetic $r8$lambda$ryTg0C0L9C_z4A0xn-9G1qdDnvg(Lcom/iMe/ui/debug/DebugPresenter;Lcom/iMe/storage/domain/model/common/Environment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/debug/DebugPresenter;->switchWalletEnvironment$lambda$0(Lcom/iMe/ui/debug/DebugPresenter;Lcom/iMe/storage/domain/model/common/Environment;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/debug/DebugPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 16
    iput-object p2, p0, Lcom/iMe/ui/debug/DebugPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method private final getConfirmSwitchEnvironmentDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/debug/DebugPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->debug_option_choose_wallet_environment_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/iMe/ui/debug/DebugPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->debug_option_choose_wallet_environment_dialog_message:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/iMe/ui/debug/DebugPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/iMe/ui/debug/DebugPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static final switchWalletEnvironment$lambda$0(Lcom/iMe/ui/debug/DebugPresenter;Lcom/iMe/storage/domain/model/common/Environment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string v0, "viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 24
    sget-object p0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->switchEnvironmentTo(Lcom/iMe/storage/domain/model/common/Environment;)V

    return-void
.end method


# virtual methods
.method public final getCurrentWalletEnvironment()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isStageEnvironment()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment;->isStageEnvironment()Z

    move-result v0

    return v0
.end method

.method public final resetAirdropInformation()V
    .locals 8

    .line 29
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/debug/DebugPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;->getDefault()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 31
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->switchEnvironmentTo(Lcom/iMe/storage/domain/model/common/Environment;)V

    return-void
.end method

.method public final switchWalletEnvironment(Lcom/iMe/storage/domain/model/common/Environment;)V
    .locals 3

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/debug/DebugView;

    invoke-direct {p0}, Lcom/iMe/ui/debug/DebugPresenter;->getConfirmSwitchEnvironmentDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/debug/DebugPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/debug/DebugPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/debug/DebugPresenter;Lcom/iMe/storage/domain/model/common/Environment;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/debug/DebugView;->showConfirmSwitchEnvironmentDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
