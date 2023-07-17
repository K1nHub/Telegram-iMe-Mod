.class public final Lcom/iMe/utils/CornersOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CornersOutlineProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/CornersOutlineProvider$WhenMappings;
    }
.end annotation


# instance fields
.field private final radius:F

.field private final roundCorners:Lcom/iMe/utils/RoundCorners;


# direct methods
.method public constructor <init>(Lcom/iMe/utils/RoundCorners;F)V
    .locals 1

    const-string/jumbo v0, "roundCorners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/utils/CornersOutlineProvider;->roundCorners:Lcom/iMe/utils/RoundCorners;

    .line 10
    iput p2, p0, Lcom/iMe/utils/CornersOutlineProvider;->radius:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/utils/RoundCorners;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 9
    sget-object p1, Lcom/iMe/utils/RoundCorners;->ALL:Lcom/iMe/utils/RoundCorners;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, 0x40800000    # 4.0f

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/utils/CornersOutlineProvider;-><init>(Lcom/iMe/utils/RoundCorners;F)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 18
    iget p1, p0, Lcom/iMe/utils/CornersOutlineProvider;->radius:F

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(F)I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/iMe/utils/CornersOutlineProvider;->roundCorners:Lcom/iMe/utils/RoundCorners;

    sget-object v1, Lcom/iMe/utils/CornersOutlineProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, p1, 0x0

    int-to-float v6, p1

    const/4 v2, 0x0

    move-object v1, p2

    move v5, v9

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_1
    add-int v5, v9, p1

    int-to-float v6, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_2
    rsub-int/lit8 v2, p1, 0x0

    int-to-float v6, p1

    const/4 v3, 0x0

    move-object v1, p2

    move v5, v9

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_3
    add-int v8, v4, p1

    int-to-float v10, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    .line 22
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_4
    int-to-float v6, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v5, v9

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method
