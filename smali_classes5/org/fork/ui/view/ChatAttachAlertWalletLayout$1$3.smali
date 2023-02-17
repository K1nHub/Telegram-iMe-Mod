.class public final Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ChatAttachAlertWalletLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/ChatAttachAlertWalletLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    .line 132
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/high16 p1, 0x41500000    # 13.0f

    .line 139
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 140
    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackgroundPaddingTop()I

    move-result p2

    .line 141
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 142
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 143
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_0

    .line 144
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p2, v2, :cond_0

    .line 145
    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    return-void
.end method
