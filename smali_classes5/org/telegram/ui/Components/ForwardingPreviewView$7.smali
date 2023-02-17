.class Lorg/telegram/ui/Components/ForwardingPreviewView$7;
.super Ljava/lang/Object;
.source "ForwardingPreviewView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

.field final synthetic val$params:Lorg/telegram/messenger/ForwardingMessagesParams;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 493
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 497
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 501
    :goto_0
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 502
    invoke-virtual {p1, v0, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    .line 503
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object p2, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PreviewForwardMessagesCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$7;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->access$300(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    :cond_3
    :goto_1
    return-void
.end method
