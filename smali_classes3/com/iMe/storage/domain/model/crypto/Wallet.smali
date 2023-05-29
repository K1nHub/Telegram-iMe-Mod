.class public abstract Lcom/iMe/storage/domain/model/crypto/Wallet;
.super Ljava/lang/Object;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;,
        Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;,
        Lcom/iMe/storage/domain/model/crypto/Wallet$TON;,
        Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;
    }
.end annotation


# instance fields
.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final guid:Ljava/lang/String;

.field private final mnemonic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->guid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->mnemonic:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->mnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPrivateKeyBytes()[B
.end method
