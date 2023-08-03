.class Lorg/telegram/ui/Stories/SelfStoryViewsView$1;
.super Lorg/telegram/ui/Stories/SelfStoriesPreviewView;
.source "SelfStoryViewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCenteredImageTap()V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return-void
.end method

.method public onClosestPositionChanged(I)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->onClosestPositionChanged(I)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->listenPager:Z

    if-eqz v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-virtual {v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 74
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-virtual {v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method onDragging()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->listenPager:Z

    return-void
.end method
