.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;
.super Landroid/view/View;
.source "ChatAttachAlertWalletLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 656
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 659
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 660
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTopPadding$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result p2

    .line 658
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
