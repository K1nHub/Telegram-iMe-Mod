.class public final Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;
.super Ljava/lang/Object;
.source "PinCodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation


# instance fields
.field private final lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V
    .locals 1

    const-string v0, "lockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 87
    sget-object p1, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    iget-object p1, p1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLockType()Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Args(lockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;->lockType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
