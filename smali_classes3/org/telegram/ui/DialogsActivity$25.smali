.class Lorg/telegram/ui/DialogsActivity$25;
.super Lorg/telegram/ui/Adapters/DialogsAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 5759
    iput-object v0, v9, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p10

    iput-object v0, v9, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 3

    .line 5762
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$29702(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 5764
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5766
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5768
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$28800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5769
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5772
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5773
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$14500(Lorg/telegram/ui/DialogsActivity;Z)V

    :cond_2
    return-void
.end method

.method public onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 8

    .line 5780
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5781
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5783
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5784
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v3

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JIZZ)V

    goto :goto_0

    .line 5786
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    neg-long v2, v2

    const/4 p1, 0x0

    invoke-static {v1, v2, v3, v0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 8

    .line 5794
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$25;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity;->access$28300(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFFILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    return-void
.end method

.method public onCreateGroupForThisClick()V
    .locals 1

    .line 5799
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$25;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$29800(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method
