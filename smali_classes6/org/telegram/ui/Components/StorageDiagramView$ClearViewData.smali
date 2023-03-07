.class public Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;
.super Ljava/lang/Object;
.source "StorageDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StorageDiagramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearViewData"
.end annotation


# instance fields
.field public clear:Z

.field public color:Ljava/lang/String;

.field firstDraw:Z

.field paint:Landroid/graphics/Paint;

.field public size:J

.field public sizeAsDouble:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StorageDiagramView;)V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    .line 375
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    .line 384
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public isClear()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    return v0
.end method

.method public setClear(Z)V
    .locals 1

    .line 391
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-eq v0, p1, :cond_0

    .line 392
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    :cond_0
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 361
    iput-wide p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    return-void
.end method

.method public setSizeAsDouble(Ljava/lang/Double;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->sizeAsDouble:Ljava/lang/Double;

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
