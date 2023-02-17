.class public final enum Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;
.super Ljava/lang/Enum;
.source "BaseDotsIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

.field public static final enum DEFAULT:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

.field public static final enum SPRING:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

.field public static final enum WORM:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;


# instance fields
.field private final defaultSize:F

.field private final defaultSpacing:F

.field private final dotsClickableId:I

.field private final dotsColorId:I

.field private final dotsCornerRadiusId:I

.field private final dotsSizeId:I

.field private final dotsSpacingId:I

.field private final styleableId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    new-instance v12, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    .line 39
    sget-object v6, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator:[I

    const-string v1, "R.styleable.SpringDotsIndicator"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v7, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator_dotsColor:I

    .line 41
    sget v8, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator_dotsSize:I

    .line 42
    sget v9, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator_dotsSpacing:I

    .line 43
    sget v10, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator_dotsCornerRadius:I

    .line 44
    sget v24, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->SpringDotsIndicator_dotsClickable:I

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41000000    # 8.0f

    move-object v1, v12

    move/from16 v11, v24

    .line 37
    invoke-direct/range {v1 .. v11}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;-><init>(Ljava/lang/String;IFF[IIIIII)V

    sput-object v12, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->DEFAULT:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    .line 47
    sget-object v2, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->DotsIndicator:[I

    const-string v3, "R.styleable.DotsIndicator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget v19, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->DotsIndicator_dotsColor:I

    .line 49
    sget v20, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->DotsIndicator_dotsSize:I

    .line 50
    sget v21, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->DotsIndicator_dotsSpacing:I

    .line 51
    sget v22, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->DotsIndicator_dotsCornerRadius:I

    const-string v14, "SPRING"

    const/4 v15, 0x1

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x40800000    # 4.0f

    move-object v13, v1

    move-object/from16 v18, v2

    move/from16 v23, v24

    .line 45
    invoke-direct/range {v13 .. v23}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;-><init>(Ljava/lang/String;IFF[IIIIII)V

    sput-object v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->SPRING:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    .line 55
    sget-object v2, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->WormDotsIndicator:[I

    const-string v3, "R.styleable.WormDotsIndicator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v19, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->WormDotsIndicator_dotsColor:I

    .line 57
    sget v20, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->WormDotsIndicator_dotsSize:I

    .line 58
    sget v21, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->WormDotsIndicator_dotsSpacing:I

    .line 59
    sget v22, Lcom/tbuonomo/viewpagerdotsindicator/R$styleable;->WormDotsIndicator_dotsCornerRadius:I

    const-string v14, "WORM"

    const/4 v15, 0x2

    move-object v13, v1

    move-object/from16 v18, v2

    .line 53
    invoke-direct/range {v13 .. v23}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;-><init>(Ljava/lang/String;IFF[IIIIII)V

    sput-object v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->WORM:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->$VALUES:[Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF[IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF[IIIIII)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->defaultSize:F

    iput p4, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->defaultSpacing:F

    iput-object p5, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->styleableId:[I

    iput p6, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsColorId:I

    iput p7, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsSizeId:I

    iput p8, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsSpacingId:I

    iput p9, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsCornerRadiusId:I

    iput p10, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsClickableId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;
    .locals 1

    const-class v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    return-object p0
.end method

.method public static values()[Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;
    .locals 1

    sget-object v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->$VALUES:[Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    invoke-virtual {v0}, [Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    return-object v0
.end method


# virtual methods
.method public final getDefaultSize()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->defaultSize:F

    return v0
.end method

.method public final getDefaultSpacing()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->defaultSpacing:F

    return v0
.end method

.method public final getDotsClickableId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsClickableId:I

    return v0
.end method

.method public final getDotsColorId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsColorId:I

    return v0
.end method

.method public final getDotsCornerRadiusId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsCornerRadiusId:I

    return v0
.end method

.method public final getDotsSizeId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsSizeId:I

    return v0
.end method

.method public final getDotsSpacingId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->dotsSpacingId:I

    return v0
.end method

.method public final getStyleableId()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->styleableId:[I

    return-object v0
.end method
