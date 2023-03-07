.class Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "ContentPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    .line 290
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$400(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Canvas;)V

    return-void
.end method
