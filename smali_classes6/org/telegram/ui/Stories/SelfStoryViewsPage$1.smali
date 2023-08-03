.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$002(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)I

    .line 79
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method
