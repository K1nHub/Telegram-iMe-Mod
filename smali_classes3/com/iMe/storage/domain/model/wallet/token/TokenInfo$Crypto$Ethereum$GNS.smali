.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GNS"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 884
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GNS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 885
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_gainsnetwork_logo:I

    .line 887
    sget v4, Lcom/iMe/storage/R$string;->currency_gns:I

    .line 888
    sget v5, Lcom/iMe/storage/R$string;->currency_short_gns:I

    .line 891
    sget-object v11, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 892
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 893
    sget v10, Lcom/iMe/storage/R$string;->currency_gns_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 883
    invoke-direct/range {v0 .. v13}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILcom/iMe/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
