.class final Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PinCodeCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;->lock(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;

    invoke-direct {v0}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;-><init>()V

    sput-object v0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;->INSTANCE:Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;

    check-cast p2, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$lock$1;->invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method
