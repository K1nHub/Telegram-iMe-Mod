.class Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;
.super Ljava/lang/Object;
.source "ChatSelectionReactionMenuOverlay.java"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->checkCreateReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;


# direct methods
.method public static synthetic $r8$lambda$lJ-fT42nZ2uURV180j71vK9jJMk(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->lambda$onReactionClicked$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClicked$0()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissParent(Z)V

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->hideMenu()V

    return-void
.end method


# virtual methods
.method public hideMenu()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode(Z)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 11

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$000(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/ChatActivity;->selectReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    .line 114
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
