.class Lorg/telegram/ui/Components/ImageUpdater$2;
.super Ljava/lang/Object;
.source "ImageUpdater.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ImageUpdater;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processSelectedAttach(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    :cond_0
    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIZLjava/lang/String;Z)V
    .locals 4

    .line 473
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object p2, p2, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/4 p3, 0x7

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    .line 530
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$2;->processSelectedAttach(I)V

    return-void

    .line 477
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p3}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p3

    .line 478
    iget-object p4, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p4}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object p4

    .line 480
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const/4 p6, 0x0

    .line 481
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p7

    const/4 v0, 0x1

    if-ge p6, p7, :cond_a

    .line 482
    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    .line 483
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 484
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    instance-of v2, p7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 486
    check-cast p7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 487
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 488
    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_2

    .line 490
    :cond_3
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 492
    :goto_2
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 493
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 494
    iget-boolean v0, p7, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 495
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 496
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 497
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 498
    iget v0, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 499
    iget-object p7, p7, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object p7, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    goto :goto_4

    .line 500
    :cond_5
    instance-of v2, p7, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_9

    .line 501
    check-cast p7, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 502
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 503
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_3

    .line 505
    :cond_6
    iput-object p7, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    .line 507
    :goto_3
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 508
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 509
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 510
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 511
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 512
    iget v2, p7, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 513
    iget-object v2, p7, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_8

    iget v3, p7, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v3, v0, :cond_8

    .line 514
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 515
    iget-object v0, p7, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->params:Ljava/util/HashMap;

    .line 518
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p7, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    :cond_9
    :goto_4
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_1

    .line 521
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p3, p5}, Lorg/telegram/ui/Components/ImageUpdater;->access$100(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    if-eq p1, p2, :cond_b

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p1}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 0

    .line 555
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public needEnterComment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpened()V
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public openAvatarsSearch()V
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    return-void
.end method
