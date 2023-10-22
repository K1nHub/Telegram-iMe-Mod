.class public final Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;
.super Ljava/lang/Object;
.source "TelegramStatisticsChartData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/common/TelegramStatisticsChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subchart"
.end annotation


# instance fields
.field private final defaultZoom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final show:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "defaultZoom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    .line 33
    iput-boolean p2, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;Ljava/util/List;ZILjava/lang/Object;)Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->copy(Ljava/util/List;Z)Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    return v0
.end method

.method public final copy(Ljava/util/List;Z)Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;"
        }
    .end annotation

    const-string v0, "defaultZoom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    iget-boolean p1, p1, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDefaultZoom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    return-object v0
.end method

.method public final getShow()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subchart(defaultZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->defaultZoom:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/common/TelegramStatisticsChartData$Subchart;->show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
