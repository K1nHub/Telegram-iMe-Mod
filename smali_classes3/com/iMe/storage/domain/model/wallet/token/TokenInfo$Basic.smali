.class public Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;
.super Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Basic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;
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

    .line 32
    invoke-direct/range {v0 .. v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;IIIILcom/iMe/storage/domain/model/wallet/token/TokenType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object v13, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move/from16 v0, p2

    .line 23
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->logo:I

    move/from16 v0, p3

    .line 24
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->smallWhiteIcon:I

    move/from16 v0, p4

    .line 25
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->fullName:I

    move/from16 v0, p5

    .line 26
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->shortName:I

    .line 27
    iput-object v14, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move/from16 v0, p7

    .line 28
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->decimals:I

    move/from16 v0, p8

    .line 29
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->maxInputDigits:I

    move/from16 v0, p9

    .line 30
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->sortPosition:I

    move/from16 v0, p10

    .line 31
    iput v0, v12, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->site:I

    return-void
.end method


# virtual methods
.method public getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getDecimals()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->decimals:I

    return v0
.end method

.method public getFullName()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->fullName:I

    return v0
.end method

.method public getLogo()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->logo:I

    return v0
.end method

.method public getMaxInputDigits()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->maxInputDigits:I

    return v0
.end method

.method public getShortName()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->shortName:I

    return v0
.end method

.method public getSite()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->site:I

    return v0
.end method

.method public getSmallWhiteIcon()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->smallWhiteIcon:I

    return v0
.end method

.method public getSortPosition()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->sortPosition:I

    return v0
.end method

.method public getTokenType()Lcom/iMe/storage/domain/model/wallet/token/TokenType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Basic;->tokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    return-object v0
.end method
