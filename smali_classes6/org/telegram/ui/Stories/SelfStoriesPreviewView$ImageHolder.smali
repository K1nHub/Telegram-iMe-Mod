.class Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
.super Ljava/lang/Object;
.source "SelfStoriesPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoriesPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageHolder"
.end annotation


# instance fields
.field position:I

.field receiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V
    .locals 1

    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 p1, 0x1

    .line 371
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method


# virtual methods
.method onBind(I)V
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$100(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 380
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_1

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    :goto_0
    return-void
.end method

.method onDetach()V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method
