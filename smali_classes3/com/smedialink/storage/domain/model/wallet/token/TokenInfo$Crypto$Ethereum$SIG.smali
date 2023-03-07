.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIG"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 338
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SIG:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 339
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_xsigma_logo:I

    .line 340
    sget v3, Lcom/smedialink/storage/R$drawable;->fork_ic_xsigma_26:I

    .line 341
    sget v4, Lcom/smedialink/storage/R$string;->currency_sig:I

    .line 342
    sget v5, Lcom/smedialink/storage/R$string;->currency_short_sig:I

    .line 345
    sget-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 347
    sget v10, Lcom/smedialink/storage/R$string;->currency_sig_site:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 337
    invoke-direct/range {v0 .. v13}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIIILcom/smedialink/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
