.class public Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fiat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;
    }
.end annotation


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
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIII)V
    .locals 15

    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    const-string v0, "code"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenType"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 1106
    invoke-direct/range {v0 .. v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1096
    iput-object v13, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move/from16 v0, p2

    .line 1097
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->logo:I

    move/from16 v0, p3

    .line 1098
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->smallWhiteIcon:I

    move/from16 v0, p4

    .line 1099
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->fullName:I

    move/from16 v0, p5

    .line 1100
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->shortName:I

    .line 1101
    iput-object v14, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move/from16 v0, p7

    .line 1102
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->decimals:I

    move/from16 v0, p8

    .line 1103
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->maxInputDigits:I

    move/from16 v0, p9

    .line 1104
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->sortPosition:I

    move/from16 v0, p10

    .line 1105
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->site:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_0

    .line 1101
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->FIAT:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 1095
    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIII)V

    return-void
.end method


# virtual methods
.method public getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getDecimals()I
    .locals 1

    .line 1102
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->decimals:I

    return v0
.end method

.method public getFullName()I
    .locals 1

    .line 1099
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->fullName:I

    return v0
.end method

.method public getLogo()I
    .locals 1

    .line 1097
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->logo:I

    return v0
.end method

.method public getMaxInputDigits()I
    .locals 1

    .line 1103
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->maxInputDigits:I

    return v0
.end method

.method public getShortName()I
    .locals 1

    .line 1100
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->shortName:I

    return v0
.end method

.method public getSite()I
    .locals 1

    .line 1105
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->site:I

    return v0
.end method

.method public getSmallWhiteIcon()I
    .locals 1

    .line 1098
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->smallWhiteIcon:I

    return v0
.end method

.method public getSortPosition()I
    .locals 1

    .line 1104
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->sortPosition:I

    return v0
.end method

.method public getTokenType()Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    return-object v0
.end method
