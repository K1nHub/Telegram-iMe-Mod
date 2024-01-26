.class public final Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;
.super Ljava/lang/Object;
.source "TelegramStatisticsChartData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/common/TelegramStatisticsChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateJSONObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "name"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "xValues"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "yValues"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v8, Lcom/iMe/model/common/TelegramStatisticsChartData$Names;

    invoke-direct {v8, v0}, Lcom/iMe/model/common/TelegramStatisticsChartData$Names;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/util/List;

    const-string v4, "x"

    .line 50
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "y0"

    .line 51
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 49
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 53
    new-instance v10, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    new-array v0, v0, [Ljava/lang/Long;

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    aput-object v2, v0, v5

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0, v4}, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;-><init>(Ljava/util/List;Z)V

    .line 47
    new-instance v0, Lcom/iMe/model/common/TelegramStatisticsChartData;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1fd5

    const/16 v19, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/iMe/model/common/TelegramStatisticsChartData;-><init>(Lcom/iMe/model/common/TelegramStatisticsChartData$Colors;Ljava/util/List;Ljava/util/List;Lcom/iMe/model/common/TelegramStatisticsChartData$Names;ILcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/lang/String;Lcom/iMe/model/common/TelegramStatisticsChartData$Types;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
