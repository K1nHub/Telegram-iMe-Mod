.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1;
.super Landroid/view/View;
.source "ChatAttachAlertTemplatesLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
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

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    .line 372
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTopPadding$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
