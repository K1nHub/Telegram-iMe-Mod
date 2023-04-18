.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V
    .locals 0

    .line 629
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(I)V
    .locals 4

    if-nez p1, :cond_1

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/16 v2, 0x33

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V

    .line 650
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 2

    .line 632
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V

    .line 637
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v0

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method
