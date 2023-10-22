.class public abstract Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;
.super Ljava/lang/Object;
.source "ApproveArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;
    }
.end annotation


# instance fields
.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final value:Ljava/lang/Number;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Number;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 10
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->value:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Number;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->value:Ljava/lang/Number;

    return-object v0
.end method
