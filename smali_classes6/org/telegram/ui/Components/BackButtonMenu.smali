.class public Lorg/telegram/ui/Components/BackButtonMenu;
.super Ljava/lang/Object;
.source "BackButtonMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0novUQGCpEqJNn9x8625ARjq5R0(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BackButtonMenu;->lambda$show$0(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3euwaBCAhTCZnm-6xko1Sv7lvhU(Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BackButtonMenu;->lambda$getStackedHistoryDialogs$1(Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)I

    move-result p0

    return p0
.end method

.method public static addToPulledDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;JII)V
    .locals 4

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 384
    :cond_2
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setPulledDialogs(Ljava/util/List;)V

    :cond_3
    const/4 v0, 0x0

    .line 388
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    .line 389
    iget-wide v2, v2, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_6

    .line 396
    new-instance v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 397
    const-class v1, Lorg/telegram/ui/ChatActivity;

    iput-object v1, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 398
    iput p1, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 399
    iput-wide p4, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    .line 400
    iput p7, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    .line 401
    iput p6, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    .line 402
    iput-object p2, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 403
    iput-object p3, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 404
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public static clearPulledDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 415
    :cond_1
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 416
    :goto_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 417
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    iget v1, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le v1, p1, :cond_2

    .line 418
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getStackedHistoryDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;J)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 291
    :cond_1
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    .line 292
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 294
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_a

    .line 296
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v8, 0x0

    .line 302
    instance-of v9, v7, Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_3

    .line 303
    const-class v8, Lorg/telegram/ui/ChatActivity;

    .line 304
    check-cast v7, Lorg/telegram/ui/ChatActivity;

    .line 305
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    .line 308
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 309
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 310
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v11

    .line 311
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getDialogFolderId()I

    move-result v13

    .line 312
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getDialogFilterId()I

    move-result v7

    goto :goto_1

    .line 313
    :cond_3
    instance-of v9, v7, Lorg/telegram/ui/ProfileActivity;

    if-eqz v9, :cond_8

    .line 314
    const-class v9, Lorg/telegram/ui/ProfileActivity;

    .line 315
    check-cast v7, Lorg/telegram/ui/ProfileActivity;

    .line 316
    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 318
    :try_start_0
    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v11

    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v11

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v9, v17

    :goto_1
    cmp-long v14, v11, p1

    if-eqz v14, :cond_8

    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-nez v14, :cond_4

    .line 326
    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_4
    const/4 v14, 0x0

    .line 328
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 329
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    move/from16 v16, v5

    iget-wide v4, v15, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v4, v4, v11

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    goto :goto_2

    :cond_6
    move/from16 v16, v5

    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_9

    .line 335
    new-instance v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 336
    iput-object v8, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 337
    iput v6, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 338
    iput-object v9, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 339
    iput-object v10, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 340
    iput-wide v11, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    .line 341
    iput v13, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    .line 342
    iput v7, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    if-nez v9, :cond_7

    if-eqz v10, :cond_9

    .line 344
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v16, v5

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_f

    .line 351
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_f

    .line 353
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    .line 354
    iget-wide v5, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_b

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    .line 358
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 359
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    iget-wide v6, v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    iget-wide v8, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    move v5, v3

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_e

    .line 365
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 369
    :cond_f
    sget-object v1, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getStackedHistoryForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JI)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation

    .line 233
    const-class p3, Lorg/telegram/ui/TopicsFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/TopicsFragment;

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 237
    iput v2, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 238
    const-class v2, Lorg/telegram/ui/DialogsActivity;

    iput-object v2, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 240
    new-instance v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 243
    iput-object p3, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0

    .line 247
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 249
    iput v2, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 250
    iput-object p3, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public static goToPulledDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/ChatActivity;

    const-string v2, "chat_id"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    iget-object v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    .line 263
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    .line 265
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 267
    :cond_2
    :goto_0
    iget v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    const-string v4, "dialog_folder_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    const-string v4, "dialog_filter_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 270
    :cond_3
    const-class v1, Lorg/telegram/ui/ProfileActivity;

    if-ne v0, v1, :cond_4

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    iget-wide v4, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 273
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 274
    :cond_4
    :goto_1
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/TopicsFragment;

    if-ne v0, v1, :cond_5

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    iget-object v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 277
    new-instance v1, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v1, v0}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 278
    :cond_5
    iget-object p1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class v0, Lorg/telegram/ui/DialogsActivity;

    if-ne p1, v0, :cond_6

    .line 280
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_6
    return-void
.end method

.method private static synthetic lambda$getStackedHistoryDialogs$1(Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)I
    .locals 0

    .line 369
    iget p1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    iget p0, p0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$show$0(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 4

    .line 158
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 161
    :cond_0
    iget p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-ltz p0, :cond_6

    if-eqz p2, :cond_3

    .line 163
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    iget p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lt p0, p4, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    iget p4, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 167
    instance-of p4, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz p4, :cond_2

    .line 168
    check-cast p0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    instance-of p4, p0, Lorg/telegram/ui/ProfileActivity;

    if-eqz p4, :cond_3

    .line 170
    check-cast p0, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    .line 174
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    :goto_1
    iget p4, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le p0, p4, :cond_6

    .line 175
    invoke-interface {p2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 178
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 179
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    :goto_2
    iget v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le p4, v0, :cond_5

    .line 181
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    .line 183
    :cond_5
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_6

    const/4 p0, 0x1

    .line 185
    invoke-interface {p2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return-void

    .line 191
    :cond_6
    invoke-static {p3, p1}, Lorg/telegram/ui/Components/BackButtonMenu;->goToPulledDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)V

    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;JILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    .line 58
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    .line 59
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v7

    .line 60
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    .line 61
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v9

    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    if-nez v9, :cond_1

    goto/16 :goto_a

    :cond_1
    if-eqz v3, :cond_2

    .line 67
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackButtonMenu;->getStackedHistoryForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JI)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BackButtonMenu;->getStackedHistoryDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;J)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    return-object v5

    .line 77
    :cond_3
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v2, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 78
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 80
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const-string v5, "actionBarDefaultSubmenuBackground"

    .line 81
    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v11, 0x0

    .line 85
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 86
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    .line 87
    iget-object v15, v12, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 88
    iget-object v14, v12, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 89
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v16, 0xc8

    .line 90
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 92
    new-instance v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    if-nez v15, :cond_4

    if-nez v14, :cond_4

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    goto :goto_3

    :cond_4
    move-object/from16 v16, v1

    if-eqz v15, :cond_5

    .line 96
    iget-boolean v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/16 v1, 0x10

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    move/from16 v1, v17

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :goto_3
    const/high16 v17, 0x42000000    # 32.0f

    const/high16 v18, 0x42000000    # 32.0f

    const v19, 0x800013

    const/high16 v20, 0x41500000    # 13.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 98
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v9

    const/4 v9, 0x1

    .line 101
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLines(I)V

    move-object/from16 v18, v3

    const/high16 v3, 0x41800000    # 16.0f

    .line 102
    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "actionBarDefaultSubmenuItem"

    .line 103
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v20, -0x40000000    # -2.0f

    const v21, 0x800013

    const/high16 v22, 0x426c0000    # 59.0f

    const/high16 v24, 0x41400000    # 12.0f

    const/16 v25, 0x0

    .line 105
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const v9, 0x3f4ccccd    # 0.8f

    .line 108
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    move-object v9, v5

    if-eqz v15, :cond_6

    .line 112
    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x65

    .line 113
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 114
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    sget v3, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move/from16 v19, v6

    goto/16 :goto_7

    :cond_6
    const-string v4, "50_50"

    if-eqz v15, :cond_8

    .line 118
    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 119
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_7

    move-object v3, v5

    :cond_7
    const/4 v5, 0x1

    .line 122
    invoke-static {v15, v5}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    invoke-virtual {v10, v14, v4, v3, v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 123
    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    if-eqz v14, :cond_d

    .line 126
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v3

    .line 129
    :goto_5
    iget-object v15, v12, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    move/from16 v19, v6

    const-class v6, Lorg/telegram/ui/ChatActivity;

    if-ne v15, v6, :cond_a

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 130
    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v5, "SavedMessages"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 131
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 132
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 133
    :cond_a
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    sget v4, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v5, "RepliesTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 135
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 136
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 137
    :cond_b
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 138
    sget v5, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v6, "HiddenName"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v6, 0x1

    .line 140
    invoke-static {v14, v6}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-virtual {v10, v15, v4, v3, v14}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_6

    :cond_c
    const/4 v6, 0x1

    .line 142
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    .line 143
    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 144
    invoke-static {v14, v6}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v10, v3, v4, v5, v14}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v4, v15

    .line 146
    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v5, p5

    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    move/from16 v19, v6

    .line 148
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_viewchats:I

    invoke-static {v8, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 149
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x18

    .line 150
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v10, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 151
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "actionBarDefaultSubmenuItemIcon"

    move-object/from16 v5, p5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 152
    sget v3, Lorg/telegram/messenger/R$string;->AllChats:I

    const-string v4, "AllChats"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_8
    const-string v3, "listSelectorSDK21"

    .line 156
    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v3, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9, v12, v7, v0}, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x30

    const/4 v4, -0x1

    .line 193
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz v1, :cond_e

    .line 195
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "actionBarDefaultSubmenuSeparator"

    .line 196
    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 197
    sget v3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const/16 v3, 0x8

    .line 198
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    move-object v4, v5

    move-object v5, v9

    move-object/from16 v1, v16

    move-object/from16 v9, v17

    move-object/from16 v3, v18

    move/from16 v6, v19

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v3

    move-object/from16 v17, v9

    move-object v9, v5

    .line 202
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 203
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v3, 0xdc

    .line 205
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 208
    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/16 v1, 0x3e8

    .line 210
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v1, 0x2

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v3, 0x0

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 213
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    const/16 v2, 0x8

    .line 216
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    move-object/from16 v2, v18

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 217
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_10

    new-array v1, v1, [I

    move-object/from16 v5, v17

    .line 219
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 220
    aget v1, v1, v3

    add-int/2addr v4, v1

    goto :goto_9

    :cond_10
    move-object/from16 v5, v17

    .line 222
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x33

    .line 223
    invoke-virtual {v0, v5, v2, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v0

    :cond_11
    :goto_a
    return-object v5
.end method
