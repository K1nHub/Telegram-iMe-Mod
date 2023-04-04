.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WBTC"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 156
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 157
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_wrapped_logo:I

    .line 158
    sget v3, Lcom/iMe/storage/R$drawable;->fork_ic_wrapped_26:I

    .line 159
    sget v4, Lcom/iMe/storage/R$string;->currency_wbtc:I

    .line 160
    sget v5, Lcom/iMe/storage/R$string;->currency_short_wbtc:I

    .line 163
    sget-object v11, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->WEI8:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 165
    sget v10, Lcom/iMe/storage/R$string;->currency_wbtc_site:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 155
    invoke-direct/range {v0 .. v13}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILcom/iMe/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
