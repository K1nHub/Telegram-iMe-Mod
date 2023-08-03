.class Lorg/telegram/ui/Stories/DialogStoriesCell$3;
.super Ljava/lang/Object;
.source "DialogStoriesCell.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$3;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 2

    .line 187
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$3;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, p2, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$200(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    .line 188
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$3;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {p2, p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->onUserLongPressed(Landroid/view/View;J)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
