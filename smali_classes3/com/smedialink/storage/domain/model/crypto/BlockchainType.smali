.class public final enum Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
.super Ljava/lang/Enum;
.source "BlockchainType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;

.field public static final enum EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field public static final enum TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field public static final enum TRON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;


# instance fields
.field private final backendName:Ljava/lang/String;

.field private final iconResId:I

.field private final subtitleResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v7, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 15
    sget v4, Lcom/smedialink/storage/R$drawable;->fork_ic_evm_logo:I

    .line 16
    sget v5, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_evm_title:I

    .line 17
    sget v6, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_evm_subtitle:I

    const-string v1, "EVM"

    const/4 v2, 0x0

    const-string v3, "ETHEREUM_VM"

    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 19
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 21
    sget v12, Lcom/smedialink/storage/R$drawable;->fork_ic_tron_logo:I

    .line 22
    sget v13, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_tron_title:I

    .line 23
    sget v14, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_tron_subtitle:I

    const-string v9, "TRON"

    const/4 v10, 0x1

    const-string v11, "TRON_VM"

    move-object v8, v0

    .line 19
    invoke-direct/range {v8 .. v14}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 25
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 27
    sget v5, Lcom/smedialink/storage/R$drawable;->fork_ic_ton_logo:I

    .line 28
    sget v6, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_ton_title:I

    .line 29
    sget v7, Lcom/smedialink/storage/R$string;->wallet_crypto_blockchains_ton_subtitle:I

    const-string v2, "TON"

    const/4 v3, 0x2

    const-string v4, "TON_VM"

    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->$values()[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->backendName:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->iconResId:I

    .line 10
    iput p5, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->titleResId:I

    .line 11
    iput p6, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->subtitleResId:I

    return-void
.end method

.method public static final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method


# virtual methods
.method public final getBackendName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->iconResId:I

    return v0
.end method

.method public final getSubtitleResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->subtitleResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->titleResId:I

    return v0
.end method

.method public final isBip39PhraseBased()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType$Companion;->getBip39PhraseBasedBlockchains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
