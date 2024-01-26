.class public final Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;
.super Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;
.source "CreateWalletScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecretWords"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pin:Ljava/lang/String;

.field private final secretWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->password:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->pin:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->mnemonicAsList(Lcom/iMe/storage/domain/model/crypto/Wallet;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->secretWords:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->address:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPin()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->secretWords:Ljava/util/List;

    return-object v0
.end method
