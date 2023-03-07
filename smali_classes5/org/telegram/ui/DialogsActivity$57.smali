.class Lorg/telegram/ui/DialogsActivity$57;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onItemClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$finalDialogId:J


# direct methods
.method public static synthetic $r8$lambda$Oyzk7KxPCV-1OBidA8x7BzH5sO0(Lorg/telegram/ui/DialogsActivity$57;JLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/DialogsActivity$57;->lambda$onUnpin$0(JLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$vM9SRRVlodPcDTu5up8TQh7sj04(Lorg/telegram/ui/DialogsActivity$57;ZJLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/DialogsActivity$57;->lambda$onUnpin$1(ZJLjava/util/ArrayList;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;J)V
    .locals 0

    .line 10189
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-wide p2, p0, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUnpin$0(JLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3

    .line 10214
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/4 p1, 0x1

    aput-object p3, v2, p1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x2

    aput-object p1, v2, p3

    const/4 p3, 0x3

    aput-object p4, v2, p3

    const/4 p3, 0x4

    const/4 p4, 0x0

    aput-object p4, v2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, v2, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, v2, p3

    const/4 p2, 0x7

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 10215
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40800(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    if-ne p6, p1, :cond_0

    .line 10216
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/DialogsActivity;->access$40602(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onUnpin$1(ZJLjava/util/ArrayList;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10220
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lorg/fork/controller/BookmarksController;->unbookmarkMessages(JLjava/util/ArrayList;)V

    goto :goto_0

    .line 10222
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/fork/controller/BookmarksController;->unbookmarkAllMessages(J)V

    .line 10224
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadManagementBookmarks()V

    .line 10225
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40800(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    if-ne p5, p1, :cond_1

    .line 10226
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$40602(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic onCompleteForwardingEditing(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onCompleteForwardingEditing(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic onReport()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onReport(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;)V

    return-void
.end method

.method public onUnpin(ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 10204
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ChatActivity;->getTotalBookmarkMessagesCount()I

    move-result v6

    .line 10205
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10206
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p7 .. p7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10207
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const/4 v3, 0x1

    aput-object v9, v2, v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x2

    aput-object v4, v2, v7

    const/4 v4, 0x3

    const/4 v7, 0x0

    aput-object v7, v2, v4

    const/4 v4, 0x4

    aput-object v7, v2, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v2, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v2, v7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x7

    aput-object v4, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 10208
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10209
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 10211
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->access$40702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 10212
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40804(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    .line 10213
    iget-object v12, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    if-eqz p3, :cond_1

    move-object/from16 v13, p5

    goto :goto_0

    :cond_1
    move-object v13, v12

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    iget-wide v2, v8, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    new-instance v16, Lorg/telegram/ui/DialogsActivity$57$$ExternalSyntheticLambda0;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v4, v9

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity$57$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$57;JLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    iget-wide v3, v8, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    new-instance v17, Lorg/telegram/ui/DialogsActivity$57$$ExternalSyntheticLambda1;

    move-object/from16 v0, v17

    move/from16 v2, p3

    move-object v5, v9

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity$57$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$57;ZJLjava/util/ArrayList;I)V

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 10228
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v18

    .line 10213
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/BulletinFactory;->createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/telegram/ui/DialogsActivity;->access$40602(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    if-eqz p3, :cond_2

    .line 10229
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10230
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v10}, Lorg/telegram/ui/DialogsActivity;->access$40702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 10231
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method public openReplyMessage(I)V
    .locals 3

    .line 10192
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v1, p0, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 4

    .line 10197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "searchFromString"

    .line 10198
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10199
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$57;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v1, p0, Lorg/telegram/ui/DialogsActivity$57;->val$finalDialogId:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JILandroid/os/Bundle;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
