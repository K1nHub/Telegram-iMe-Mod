.class Lorg/telegram/ui/ChatActivity$136;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->makeProgressForBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)Lorg/telegram/messenger/browser/Browser$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2613HLDZoo6_YIYHzzmYwzrFaAQ(Lorg/telegram/ui/ChatActivity$136;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$136;->lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0

    .line 30740
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$136;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 30754
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 30755
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48200(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 30753
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v0, Lorg/telegram/ui/ChatActivity$136$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$136$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$136;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const-wide/16 v1, 0xf0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 30743
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47902(Lorg/telegram/ui/ChatActivity;I)I

    .line 30744
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48002(Lorg/telegram/ui/ChatActivity;I)I

    .line 30745
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$136;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48302(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 30747
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
