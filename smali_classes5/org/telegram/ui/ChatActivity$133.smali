.class Lorg/telegram/ui/ChatActivity$133;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->makeProgressForLink(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;)Lorg/telegram/messenger/browser/Browser$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$span:Landroid/text/style/CharacterStyle;


# direct methods
.method public static synthetic $r8$lambda$zWPuBzJN7mInN23Pf6OQZbt-3jg(Lorg/telegram/ui/ChatActivity$133;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$133;->lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 30851
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$133;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$133;->val$span:Landroid/text/style/CharacterStyle;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 30865
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47700(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 30866
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48000(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 30864
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$133;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v0, Lorg/telegram/ui/ChatActivity$133$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$133$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$133;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const-wide/16 v1, 0xf0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 30854
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$133;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47702(Lorg/telegram/ui/ChatActivity;I)I

    .line 30855
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47802(Lorg/telegram/ui/ChatActivity;I)I

    .line 30856
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$133;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$133;->val$span:Landroid/text/style/CharacterStyle;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47902(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    .line 30858
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$133;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
