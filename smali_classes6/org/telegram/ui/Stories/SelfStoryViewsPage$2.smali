.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method
