.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public static synthetic $r8$lambda$fdKPPkpQu3x3oM5P5qrt5LfpLwc(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->lambda$end$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 32063
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private static synthetic lambda$end$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 32075
    invoke-static {p0}, Lorg/telegram/ui/ChatActivity;->access$48300(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 32075
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 32066
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48002(Lorg/telegram/ui/ChatActivity;I)I

    .line 32067
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48102(Lorg/telegram/ui/ChatActivity;I)I

    .line 32068
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$48202(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    .line 32069
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$5;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
