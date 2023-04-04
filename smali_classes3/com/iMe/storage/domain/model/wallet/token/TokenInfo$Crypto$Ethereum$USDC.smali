.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USDC"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 819
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 820
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_usdc_logo:I

    .line 822
    sget v4, Lcom/iMe/storage/R$string;->currency_usdc:I

    .line 823
    sget v5, Lcom/iMe/storage/R$string;->currency_short_usdc:I

    .line 826
    sget-object v11, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->MWEI:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 827
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 828
    sget v10, Lcom/iMe/storage/R$string;->currency_usdc_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 818
    invoke-direct/range {v0 .. v13}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILcom/iMe/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
