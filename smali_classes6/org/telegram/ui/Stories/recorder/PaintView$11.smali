.class Lorg/telegram/ui/Stories/recorder/PaintView$11;
.super Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;-><init>(Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/StoryEntry;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;-><init>(Landroid/content/Context;)V

    .line 884
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$1500(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 889
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 890
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 891
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 892
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 893
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F

    move-result v6

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 889
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->path:Landroid/graphics/Path;

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$11;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 901
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 902
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
