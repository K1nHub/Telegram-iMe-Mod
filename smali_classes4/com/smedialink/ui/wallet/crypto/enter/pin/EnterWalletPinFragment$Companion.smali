.class public final Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;
.super Ljava/lang/Object;
.source "EnterWalletPinFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;",
            "-",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;"
        }
    .end annotation

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;-><init>(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
