.class public final Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletFlowCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator\n*L\n1#1,111:1\n40#2,22:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field final synthetic $disposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $isAlreadyShowingLoader$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

.field final synthetic $parentActivity$inlined:Lorg/telegram/ui/LaunchActivity;

.field final synthetic $removeLast$inlined:Z

.field final synthetic this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;


# direct methods
.method public constructor <init>(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;ZLkotlin/jvm/internal/Ref$BooleanRef;Lorg/telegram/ui/LaunchActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iput-object p2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p3, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    iput-boolean p4, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$removeLast$inlined:Z

    iput-object p5, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$isAlreadyShowingLoader$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$parentActivity$inlined:Lorg/telegram/ui/LaunchActivity;

    iput-object p7, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$disposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    iget-boolean v2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$removeLast$inlined:Z

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->access$startWalletFlow(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    .line 118
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->access$getResourceManager$p(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    iget-boolean v2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$removeLast$inlined:Z

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->access$startWalletFlow(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$isAlreadyShowingLoader$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 125
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$parentActivity$inlined:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$2$1;

    iget-object v2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;->$disposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v2}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/LaunchActivity;->showLoadingDialog(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method
