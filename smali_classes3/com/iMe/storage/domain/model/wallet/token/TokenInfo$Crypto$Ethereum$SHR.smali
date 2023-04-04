.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHR"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 663
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 664
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_share_ring_logo:I

    .line 666
    sget v4, Lcom/iMe/storage/R$string;->currency_shr:I

    .line 667
    sget v5, Lcom/iMe/storage/R$string;->currency_short_shr:I

    .line 670
    sget-object v11, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 671
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 672
    sget v10, Lcom/iMe/storage/R$string;->currency_shr_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 662
    invoke-direct/range {v0 .. v13}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILcom/iMe/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
