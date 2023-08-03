.class Lorg/telegram/ui/Stories/DialogStoriesCell$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "DialogStoriesCell.java"


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
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$1;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$1;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 150
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 155
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 156
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$1;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p2, p2, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 157
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$1;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p2, p2, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$1;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
