.class Lorg/telegram/ui/Components/ForwardingPreviewView$9;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
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

.field final synthetic val$params:Lorg/telegram/messenger/ForwardingMessagesParams;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;->val$params:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->access$500(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    return p1

    :cond_0
    const/16 p1, 0x3e8

    return p1
.end method
