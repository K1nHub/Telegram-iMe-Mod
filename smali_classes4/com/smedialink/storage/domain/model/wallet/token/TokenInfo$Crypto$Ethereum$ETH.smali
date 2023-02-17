.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ETH"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 77
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 78
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_eth_logo:I

    .line 79
    sget v3, Lcom/smedialink/storage/R$drawable;->fork_ic_eth_26:I

    .line 80
    sget v4, Lcom/smedialink/storage/R$string;->currency_eth:I

    .line 81
    sget v5, Lcom/smedialink/storage/R$string;->currency_short_eth:I

    .line 84
    sget-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 86
    sget v10, Lcom/smedialink/storage/R$string;->currency_eth_site:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v13}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIIILcom/smedialink/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
