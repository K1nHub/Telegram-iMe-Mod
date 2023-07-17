.class final Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletFlowCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $parentActivity:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public static synthetic $r8$lambda$g5Ezp_lZI3qsu1OlGZzsHV4AKMI(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1;->invoke$lambda$0(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1;->$parentActivity:Lorg/telegram/ui/LaunchActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 42
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1;->$parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v2, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$1$1$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->showLoadingDialog(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_0
    return-void
.end method
