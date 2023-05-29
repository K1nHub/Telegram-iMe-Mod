.class public abstract Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;,
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;,
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto;,
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

.field private static final supportedTokens$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final decimals:I

.field private final fullName:I

.field private final logo:I

.field private final maxInputDigits:I

.field private final shortName:I

.field private final site:I

.field private final smallWhiteIcon:I

.field private final sortPosition:I

.field private final tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    .line 1127
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->supportedTokens$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 10
    iput p2, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->logo:I

    .line 11
    iput p3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->smallWhiteIcon:I

    .line 12
    iput p4, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->fullName:I

    .line 13
    iput p5, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->shortName:I

    .line 14
    iput-object p6, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 15
    iput p7, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->decimals:I

    .line 16
    iput p8, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->maxInputDigits:I

    .line 17
    iput p9, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->sortPosition:I

    .line 18
    iput p10, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->site:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIII)V

    return-void
.end method

.method public static final synthetic access$getSupportedTokens$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->supportedTokens$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getDecimals()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->decimals:I

    return v0
.end method

.method public getFullName()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->fullName:I

    return v0
.end method

.method public getLogo()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->logo:I

    return v0
.end method

.method public getMaxInputDigits()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->maxInputDigits:I

    return v0
.end method

.method public getShortName()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->shortName:I

    return v0
.end method

.method public getSite()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->site:I

    return v0
.end method

.method public getSmallWhiteIcon()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->smallWhiteIcon:I

    return v0
.end method

.method public getSortPosition()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->sortPosition:I

    return v0
.end method

.method public getTokenType()Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    return-object v0
.end method

.method public final isEth()Z
    .locals 1

    .line 1121
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    return v0
.end method

.method public final isLime()Z
    .locals 1

    .line 1119
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIME;

    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    .line 1120
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;

    return v0
.end method
