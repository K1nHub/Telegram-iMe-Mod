.class Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
.super Ljava/lang/Object;
.source "ProfileStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/ProfileStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoryCircle"
.end annotation


# instance fields
.field final borderRect:Landroid/graphics/RectF;

.field cachedIndex:F

.field cachedRead:F

.field final cachedRect:Landroid/graphics/RectF;

.field cachedScale:F

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field index:I

.field final indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field read:Z

.field final readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field scale:F

.field final scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field storyId:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 4

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 112
    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x1a4

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 115
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 99
    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 102
    invoke-static {p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$000(Lorg/telegram/ui/Stories/ProfileStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 105
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v0, 0x19

    invoke-static {p1, p2, v0, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setThumbImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;II)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method
