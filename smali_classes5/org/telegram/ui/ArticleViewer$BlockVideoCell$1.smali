.class Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;
.super Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->startVideoPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V
    .locals 0

    .line 6583
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public needRepeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 6591
    invoke-super {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onRenderedFirstFrame()V

    .line 6592
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6593
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    .line 6594
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    :cond_0
    return-void
.end method
