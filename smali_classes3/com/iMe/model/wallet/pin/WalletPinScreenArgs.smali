.class public final Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;
.super Ljava/lang/Object;
.source "WalletPinScreenArgs.kt"


# instance fields
.field private final password:Ljava/lang/String;

.field private final screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

.field private final seed:Ljava/lang/String;

.field private final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    const-string v1, ""

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v1, v1, v2, v0}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 11
    iput-object p4, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;ILjava/lang/Object;)Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/Wallet;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    return-object v0
.end method

.method public final component4()Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iget-object v3, p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    iget-object p1, p1, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenType()Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    return-object v0
.end method

.method public final getSeed()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public final getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletPinScreenArgs(password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->seed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wallet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
