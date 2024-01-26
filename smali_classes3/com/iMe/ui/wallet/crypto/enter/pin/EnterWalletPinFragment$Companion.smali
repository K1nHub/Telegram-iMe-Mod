.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;
.super Ljava/lang/Object;
.source "EnterWalletPinFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult;",
            "-",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;"
        }
    .end annotation

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
