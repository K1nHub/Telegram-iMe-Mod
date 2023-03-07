.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EQX"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 429
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 430
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_eqx_logo:I

    .line 432
    sget v4, Lcom/smedialink/storage/R$string;->currency_eqx:I

    .line 433
    sget v5, Lcom/smedialink/storage/R$string;->currency_short_eqx:I

    .line 436
    sget-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 437
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 438
    sget v10, Lcom/smedialink/storage/R$string;->currency_eqx_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 428
    invoke-direct/range {v0 .. v13}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIIILcom/smedialink/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
