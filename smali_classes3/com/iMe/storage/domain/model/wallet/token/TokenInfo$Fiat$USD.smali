.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USD"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 1083
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 1086
    sget v4, Lcom/iMe/storage/R$string;->currency_dollar:I

    .line 1087
    sget v5, Lcom/iMe/storage/R$string;->currency_short_dollar:I

    .line 1090
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v10, -0x1

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object v0, p0

    .line 1082
    invoke-direct/range {v0 .. v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getDollarsDecimals(D)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result p1

    :goto_0
    return p1
.end method