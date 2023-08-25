.class public final enum Lcom/iMe/storage/domain/model/wallet/token/TokenType;
.super Ljava/lang/Enum;
.source "TokenType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenType;

.field public static final enum CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;

.field public static final enum NFT:Lcom/iMe/storage/domain/model/wallet/token/TokenType;


# instance fields
.field private category:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->NFT:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    sget v1, Lcom/iMe/storage/R$string;->wallet_account_type_crypto:I

    const-string v2, "CRYPTO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_nft:I

    const-string v2, "NFT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->NFT:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->$values()[Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->category:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    return-object v0
.end method


# virtual methods
.method public final getCategory()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->category:I

    return v0
.end method

.method public final isCrypto()Z
    .locals 1

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNft()Z
    .locals 1

    .line 10
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->NFT:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCategory(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->category:I

    return-void
.end method
