.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ChatAttachAlertTemplatesLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    .line 241
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    .line 244
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTopPadding$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result p2

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 248
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method
