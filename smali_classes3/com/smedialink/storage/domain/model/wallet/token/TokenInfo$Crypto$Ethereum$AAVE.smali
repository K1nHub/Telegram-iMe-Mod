.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AAVE"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 871
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->AAVE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 872
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_aave_logo:I

    .line 874
    sget v4, Lcom/smedialink/storage/R$string;->currency_aave:I

    .line 875
    sget v5, Lcom/smedialink/storage/R$string;->currency_short_aave:I

    .line 878
    sget-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 879
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 880
    sget v10, Lcom/smedialink/storage/R$string;->currency_aave_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 870
    invoke-direct/range {v0 .. v13}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIIILcom/smedialink/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
