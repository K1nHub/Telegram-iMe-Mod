.class public final Lcom/iMe/model/common/TelegramStatisticsChartData;
.super Ljava/lang/Object;
.source "TelegramStatisticsChartData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;,
        Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;,
        Lcom/iMe/model/common/TelegramStatisticsChartData$Names;,
        Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;,
        Lcom/iMe/model/common/TelegramStatisticsChartData$Types;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;


# instance fields
.field private final colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hidden:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

.field private final strokeWidth:I

.field private final subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

.field private final title:Ljava/lang/String;

.field private final types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

.field private final xRangeFormatter:Ljava/lang/String;

.field private final xTickFormatter:Ljava/lang/String;

.field private final xTooltipFormatter:Ljava/lang/String;

.field private final yTickFormatter:Ljava/lang/String;

.field private final yTooltipFormatter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->Companion:Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Names;",
            "I",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;",
            "Ljava/lang/String;",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Types;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hidden"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "names"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subchart"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xRangeFormatter"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xTickFormatter"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yTooltipFormatter"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    .line 9
    iput-object p2, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    .line 10
    iput-object p3, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    .line 11
    iput-object p4, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    .line 12
    iput p5, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    .line 13
    iput-object p6, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    .line 14
    iput-object p7, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    .line 16
    iput-object p9, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    .line 17
    iput-object p10, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    .line 18
    iput-object p11, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    .line 19
    iput-object p12, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    .line 20
    iput-object p13, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    const-string v2, "BLUE#007AFF"

    invoke-direct {v1, v2}, Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const-string v1, ""

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    const-string v2, "x"

    const-string v3, "line"

    invoke-direct {v1, v2, v3}, Lcom/iMe/model/common/TelegramStatisticsChartData$Types;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const-string v1, "statsFormat(\'day\')"

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    const-string v1, "statsTooltipFormat(\'day\')"

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move-object v15, v2

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    const-string v0, "statsFormatTooltipValue"

    move-object/from16 v16, v0

    goto :goto_9

    :cond_9
    move-object/from16 v16, p13

    :goto_9
    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    .line 7
    invoke-direct/range {v3 .. v16}, Lcom/iMe/model/common/TelegramStatisticsChartData;-><init>(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final component1()Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    return-object v0
.end method

.method private final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    return-object v0
.end method

.method private final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    return-object v0
.end method

.method private final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    return-object v0
.end method

.method private final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    return-object v0
.end method

.method private final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    return-object v0
.end method

.method private final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    return-object v0
.end method

.method private final component4()Lcom/iMe/model/common/TelegramStatisticsChartData$Names;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    return-object v0
.end method

.method private final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    return v0
.end method

.method private final component6()Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    return-object v0
.end method

.method private final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    return-object v0
.end method

.method private final component8()Lcom/iMe/model/common/TelegramStatisticsChartData$Types;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    return-object v0
.end method

.method private final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/iMe/model/common/TelegramStatisticsChartData;Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/common/TelegramStatisticsChartData;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/iMe/model/common/TelegramStatisticsChartData;->copy(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/common/TelegramStatisticsChartData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/common/TelegramStatisticsChartData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Names;",
            "I",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;",
            "Ljava/lang/String;",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Types;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iMe/model/common/TelegramStatisticsChartData;"
        }
    .end annotation

    const-string v0, "colors"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columns"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hidden"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "names"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subchart"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xRangeFormatter"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xTickFormatter"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yTooltipFormatter"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/common/TelegramStatisticsChartData;

    move-object v1, v0

    move/from16 v6, p5

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/iMe/model/common/TelegramStatisticsChartData;-><init>(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/common/TelegramStatisticsChartData;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    iget v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    invoke-virtual {v0}, Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    invoke-virtual {v1}, Lcom/iMe/model/common/TelegramStatisticsChartData$Names;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    invoke-virtual {v1}, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    invoke-virtual {v1}, Lcom/iMe/model/common/TelegramStatisticsChartData$Types;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelegramStatisticsChartData(colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->colors:Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->columns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->hidden:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->names:Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->strokeWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subchart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->subchart:Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->types:Lcom/iMe/model/common/TelegramStatisticsChartData$Types;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xRangeFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xRangeFormatter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xTickFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTickFormatter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xTooltipFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->xTooltipFormatter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", yTickFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTickFormatter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", yTooltipFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData;->yTooltipFormatter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
