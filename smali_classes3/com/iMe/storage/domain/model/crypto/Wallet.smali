.class public abstract Lcom/iMe/storage/domain/model/crypto/Wallet;
.super Ljava/lang/Object;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;,
        Lcom/iMe/storage/domain/model/crypto/Wallet$TON;,
        Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;
    }
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final guid:Ljava/lang/String;

.field private final mnemonic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->guid:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->mnemonic:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->address:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet;->mnemonic:Ljava/lang/String;

    return-object v0
.end method
