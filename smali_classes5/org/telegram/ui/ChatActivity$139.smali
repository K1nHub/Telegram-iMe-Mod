.class Lorg/telegram/ui/ChatActivity$139;
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
.method public static synthetic $r8$lambda$ui6oaPLV1pih4LJrcJwGkukoQEI(Lorg/telegram/ui/ChatActivity$139;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$139;->lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 32475
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$139;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$139;->val$span:Landroid/text/style/CharacterStyle;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 32489
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 32490
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48100(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 32488
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v0, Lorg/telegram/ui/ChatActivity$139$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$139$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$139;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const-wide/16 v1, 0xf0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 32478
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$139;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47802(Lorg/telegram/ui/ChatActivity;I)I

    .line 32479
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$47902(Lorg/telegram/ui/ChatActivity;I)I

    .line 32480
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$139;->val$span:Landroid/text/style/CharacterStyle;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48002(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    .line 32482
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
