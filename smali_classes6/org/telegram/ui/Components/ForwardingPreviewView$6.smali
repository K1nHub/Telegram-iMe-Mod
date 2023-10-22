.class Lorg/telegram/ui/Components/ForwardingPreviewView$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ForwardingPreviewView.java"


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$6;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    .line 482
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$6;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 483
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$6;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 484
    iget-object p3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$6;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$6;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setParentViewSize(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
