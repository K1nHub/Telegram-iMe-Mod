.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TOMOE"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 494
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 495
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_tomoe_logo:I

    .line 497
    sget v4, Lcom/iMe/storage/R$string;->currency_tomoe:I

    .line 498
    sget v5, Lcom/iMe/storage/R$string;->currency_short_tomoe:I

    .line 501
    sget-object v11, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 502
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 503
    sget v10, Lcom/iMe/storage/R$string;->currency_tomoe_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 493
    invoke-direct/range {v0 .. v13}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILcom/iMe/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
