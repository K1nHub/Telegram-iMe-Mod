.class Lorg/telegram/ui/Components/ImageUpdater$1;
.super Ljava/lang/Object;
.source "ImageUpdater.java"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sendPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ImageUpdater;

.field final synthetic val$order:Ljava/util/ArrayList;

.field final synthetic val$photos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$photos:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$order:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(ZZILjava/lang/String;Z)V
    .locals 0

    .line 389
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$photos:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2}, Lorg/telegram/ui/Components/ImageUpdater;->access$000(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->sendPressed:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x1

    .line 392
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->sendPressed:Z

    .line 394
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 395
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$order:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 396
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$photos:Ljava/util/HashMap;

    iget-object p4, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->val$order:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 397
    new-instance p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {p4}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 398
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    instance-of p5, p3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz p5, :cond_3

    .line 400
    check-cast p3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 401
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 402
    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_1

    .line 404
    :cond_1
    iput-object p3, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    .line 406
    :goto_1
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 407
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 408
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 409
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 410
    iget-object p5, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object p5, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 411
    iget p3, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput p3, p4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 414
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->access$100(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public canFinishFragment()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater$1;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {v0}, Lorg/telegram/ui/Components/ImageUpdater;->access$000(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->canFinishFragment()Z

    move-result v0

    return v0
.end method

.method public onCaptionChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public synthetic onOpenInPressed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$onOpenInPressed(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    return-void
.end method

.method public selectedPhotosChanged()V
    .locals 0

    return-void
.end method
