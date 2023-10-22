.class Lorg/telegram/ui/DialogsActivity$SwipeController;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeController"
.end annotation


# instance fields
.field private currentItemViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field private swipeFolderBack:Z

.field private swipingFolder:Z

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$0HDlPYdwQJlHPtH8Bw69oWJjfJY(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$SwipeController;->lambda$onSwiped$3(Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cydm_nNsIvEmDFTlC4Hv7Mb0G8Y(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$SwipeController;->lambda$getAnimationDuration$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfJsZNiRrNS10V-GY4CvZ3RYxTY(Lorg/telegram/ui/DialogsActivity$SwipeController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$SwipeController;->lambda$onSwiped$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9MU8vixEfqNQJAdqPeSoz9C_RM(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$SwipeController;->lambda$onSwiped$0(Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ql6Wuy6evzgCzv5MSYEIM2CtrRA(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$SwipeController;->lambda$onSwiped$2(Lorg/telegram/tgnet/TLRPC$Dialog;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 3814
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 3815
    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    return-void
.end method

.method static synthetic access$18000(Lorg/telegram/ui/DialogsActivity$SwipeController;)Z
    .locals 0

    .line 3806
    iget-boolean p0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipingFolder:Z

    return p0
.end method

.method static synthetic access$18102(Lorg/telegram/ui/DialogsActivity$SwipeController;Z)Z
    .locals 0

    .line 3806
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipeFolderBack:Z

    return p1
.end method

.method static synthetic access$18200(Lorg/telegram/ui/DialogsActivity$SwipeController;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 3806
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->currentItemViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method private static synthetic lambda$getAnimationDuration$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 4087
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onSwiped$0(Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 3

    .line 3965
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->hideChats(JZ)Z

    .line 3966
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 3967
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    .line 3968
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 3969
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onSwiped$1()V
    .locals 2

    .line 4006
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onSwiped$2(Lorg/telegram/tgnet/TLRPC$Dialog;I)V
    .locals 9

    .line 4016
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4017
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    const-wide/16 v7, 0x0

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController;->addDialogToFolder(JIIJ)I

    .line 4018
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$22302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4019
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 4020
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 4022
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 4023
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq p1, v1, :cond_1

    .line 4024
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4025
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    .line 4026
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 4027
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;)V

    .line 4029
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4030
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    .line 4032
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4033
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 4034
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;)V

    goto :goto_0

    .line 4036
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4037
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    .line 4038
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    goto :goto_0

    .line 4042
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSwiped$3(Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 11

    .line 3941
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3944
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3945
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 3946
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Cells/DialogCell;

    .line 3947
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 3948
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    if-ne v1, p2, :cond_1

    .line 3950
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 3952
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v1, 0x0

    invoke-virtual {p2, v4, v5, v1}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3953
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hidePromoDialog()V

    .line 3954
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    .line 3955
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    goto/16 :goto_7

    .line 3958
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3959
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p2, v4, v5, v1}, Lcom/iMe/fork/controller/HiddenChatsController;->hideChats(JZ)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 3962
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3964
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x17

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3972
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    return-void

    .line 3976
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    if-nez p2, :cond_6

    move v7, v3

    goto :goto_0

    :cond_6
    move v7, v1

    :goto_0
    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesController;->addDialogToFolder(JIIJ)I

    move-result p2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_7

    if-eqz p3, :cond_8

    .line 3978
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    .line 3979
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 3981
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_9
    if-ne p2, v4, :cond_f

    .line 3983
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;->prepareForRemove()V

    if-nez p3, :cond_a

    .line 3985
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v3}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 3986
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 3987
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;)V

    goto :goto_3

    .line 3989
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    .line 3990
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_1

    :cond_b
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-nez p2, :cond_e

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-nez p2, :cond_e

    .line 3991
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v3}, Lorg/telegram/ui/DialogsActivity;->access$17702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3992
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p3, :cond_c

    const/16 p3, 0x30

    goto :goto_2

    :cond_c
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p3, :cond_d

    const/16 p3, 0x4e

    goto :goto_2

    :cond_d
    const/16 p3, 0x48

    :goto_2
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p2, v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 3995
    :cond_e
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;)I

    move-result p3

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-virtual {p2, p3, v5, v6, v1}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object p2

    .line 3997
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_11

    .line 3998
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-virtual {p3, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_f
    if-ne p2, v3, :cond_11

    .line 4000
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 4001
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p3, :cond_10

    .line 4002
    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    .line 4003
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex(Z)Z

    .line 4004
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/DialogCell;->animateArchiveAvatar()V

    .line 4006
    :cond_10
    new-instance p2, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$SwipeController;)V

    const-wide/16 v5, 0x12c

    invoke-static {p2, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4008
    :cond_11
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "archivehint_l"

    .line 4009
    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_12

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v5, :cond_13

    :cond_12
    move v1, v3

    :cond_13
    if-nez v1, :cond_14

    .line 4011
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p3, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4013
    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 4015
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    if-eqz p2, :cond_15

    const/16 v4, 0x17

    :goto_5
    move v8, v4

    goto :goto_6

    :cond_15
    if-eqz v1, :cond_16

    goto :goto_5

    :cond_16
    const/4 v4, 0x3

    goto :goto_5

    :goto_6
    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, p1, v0}, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;I)V

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4047
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 4048
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 4049
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$17500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_7
    return-void
.end method


# virtual methods
.method public convertToAbsoluteDirection(II)I
    .locals 1

    .line 3909
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipeFolderBack:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3912
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p1

    return p1
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-wide/16 p1, 0xc8

    return-wide p1

    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 4085
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$20400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4086
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$20400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v0

    .line 4087
    new-instance v1, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$20402(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Cells/DialogCell;

    .line 4091
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 11

    .line 3820
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$20000(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$20100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$20200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result p1

    if-nez p1, :cond_17

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_5

    .line 3823
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipingFolder:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipeFolderBack:Z

    if-eqz p1, :cond_3

    .line 3824
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p2, :cond_2

    .line 3825
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean v1, p1, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    .line 3827
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipingFolder:Z

    return v0

    .line 3830
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->isDefaultDialogType()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object p1

    if-nez p1, :cond_17

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_17

    .line 3831
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 3832
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    .line 3833
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$20300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_6

    .line 3834
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 3835
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity;->access$19100(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 3838
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$20402(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Cells/DialogCell;

    .line 3839
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$20400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3840
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipeFolderBack:Z

    .line 3841
    invoke-static {v6, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0

    .line 3844
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    const/4 v4, 0x5

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$20500(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    if-eq p2, v4, :cond_7

    goto/16 :goto_5

    .line 3848
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    .line 3850
    :try_start_0
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsType()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3853
    :catch_0
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$20600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v7

    if-eq v7, v4, :cond_17

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$19800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v7, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v4, v2, v7

    const/4 v7, 0x7

    const/16 v8, 0x8

    if-eqz v4, :cond_9

    const-wide/32 v9, 0xbdb28

    cmp-long v4, v2, v9

    if-eqz v4, :cond_9

    if-eq p2, v7, :cond_9

    if-ne p2, v8, :cond_a

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$20700(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_17

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v4, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-eq p2, v4, :cond_b

    goto/16 :goto_5

    .line 3856
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    const/4 v4, 0x4

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$20800(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    if-eq p2, v6, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$20900(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    if-eq p2, v1, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$21000(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$21100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p2

    if-ne p2, v4, :cond_d

    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p2

    if-nez p2, :cond_d

    move p2, v1

    goto :goto_1

    :cond_d
    move p2, v0

    .line 3857
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$21200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    if-ne v6, v1, :cond_12

    .line 3859
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-eq v6, v7, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-ne v6, v8, :cond_10

    .line 3860
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-ne v6, v8, :cond_f

    move v6, v1

    goto :goto_2

    :cond_f
    move v6, v0

    :goto_2
    aget-object v5, v5, v6

    :cond_10
    if-eqz v5, :cond_12

    .line 3862
    iget v6, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 3863
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_12

    .line 3864
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$21300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-virtual {v5, v3, v2}, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow(ILorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result v3

    if-nez v3, :cond_12

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-gtz v3, :cond_11

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-eqz v2, :cond_12

    :cond_11
    move p2, v0

    .line 3869
    :cond_12
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipeFolderBack:Z

    if-eqz p2, :cond_13

    .line 3870
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result p2

    if-eqz p2, :cond_15

    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_3

    :cond_14
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz p2, :cond_16

    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result p2

    if-eqz p2, :cond_16

    :cond_15
    move p2, v1

    goto :goto_4

    :cond_16
    move p2, v0

    :goto_4
    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->swipingFolder:Z

    .line 3871
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/DialogCell;->setSliding(Z)V

    .line 3872
    invoke-static {v0, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_17
    :goto_5
    return v0
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0

    const p1, 0x455ac000    # 3500.0f

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    const p1, 0x3ee66666    # 0.45f

    return p1
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 3880
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3883
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 3884
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    .line 3885
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_7

    .line 3886
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$19100(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 3889
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 3890
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 3891
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p3, p3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p3

    if-nez p3, :cond_2

    .line 3892
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, p3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 3894
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p3, v0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->moveDialogs(Lorg/telegram/ui/Components/RecyclerListView;II)V

    .line 3896
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p1

    const/4 p2, 0x7

    const/16 p3, 0x8

    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p1

    if-ne p1, p3, :cond_3

    goto :goto_0

    .line 3902
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$21502(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_1

    .line 3897
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p2

    if-ne p2, p3, :cond_5

    move v1, v0

    :cond_5
    aget-object p1, p1, v1

    .line 3898
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$21400(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3899
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$21400(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4071
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    .line 4073
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->currentItemViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_1

    .line 4074
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_1

    .line 4075
    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    .line 4077
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    if-eqz p1, :cond_7

    .line 3918
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    .line 3919
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v0

    .line 3920
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3921
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {p1, v3, p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->access$21600(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;ZLorg/telegram/ui/Cells/DialogCell;)V

    return-void

    .line 3924
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v2, :cond_1

    return-void

    .line 3929
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$21700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 3930
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3931
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3932
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-gtz v0, :cond_3

    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v5

    :goto_1
    invoke-static {p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$18402(Lorg/telegram/ui/DialogsActivity;I)I

    .line 3933
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v0, 0x65

    invoke-static {p2, p1, v0, v5, v3}, Lorg/telegram/ui/DialogsActivity;->access$18500(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    return-void

    .line 3937
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Cells/DialogCell;

    .line 3938
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 3939
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result p2

    .line 3940
    new-instance v0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v2, p2, p1}, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    .line 4053
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v5}, Lorg/telegram/ui/DialogsActivity;->access$21800(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4054
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 4055
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object p1

    if-nez p1, :cond_5

    .line 4056
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/Components/PacmanAnimation;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/PacmanAnimation;-><init>(Landroid/view/View;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$16402(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/PacmanAnimation;)Lorg/telegram/ui/Components/PacmanAnimation;

    .line 4058
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PacmanAnimation;->setFinishRunnable(Ljava/lang/Runnable;)V

    .line 4059
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PacmanAnimation;->start()V

    goto :goto_2

    .line 4061
    :cond_6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 4064
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Cells/DialogCell;

    :goto_2
    return-void
.end method
