.class Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;
.super Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.source "SelfStoryViewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/SelfStoryViewsView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView$3;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsView$3;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsView$3;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$100(Lorg/telegram/ui/Stories/SelfStoryViewsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsView$3;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$100(Lorg/telegram/ui/Stories/SelfStoryViewsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
