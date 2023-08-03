.class Lorg/telegram/ui/Stories/SelfStoryViewsView$3;
.super Landroidx/viewpager/widget/PagerAdapter;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 150
    move-object p2, p3

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 128
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView$3;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 136
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setStoryItem(Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V

    .line 139
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setListBottomPadding(F)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
