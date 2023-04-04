.class public final Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;
.super Ljava/lang/Object;
.source "PinCodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinCodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinCodeCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/PinCodeCoordinator\n+ 2 ContextExt.kt\ncom/iMe/utils/extentions/common/ContextExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n47#2:84\n1747#3,3:85\n*S KotlinDebug\n*F\n+ 1 PinCodeCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/PinCodeCoordinator\n*L\n18#1:84\n18#1:85,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lock$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    sget-object p2, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->lock(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    return-void
.end method

.method public static synthetic start$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 27
    new-instance p3, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object p6, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->CHECK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {p3, p6}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    return-void
.end method


# virtual methods
.method public final lock(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V
    .locals 8

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1747
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 47
    instance-of v1, v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 19
    sget-object v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->Companion:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    sget-object v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;->INSTANCE:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;

    invoke-virtual {v0, p2, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z

    :cond_3
    return-void
.end method

.method public final start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V
    .locals 2

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->Companion:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    invoke-virtual {p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->getLockType()Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    move-result-object p3

    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$start$1;

    invoke-direct {v1, p2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$start$1;-><init>(Lcom/iMe/ui/base/WalletAuthFragment;)V

    invoke-virtual {v0, p3, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public final startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V
    .locals 2

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->Companion:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    invoke-virtual {p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->getLockType()Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    move-result-object p3

    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;

    invoke-direct {v1, p2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v0, p3, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method
