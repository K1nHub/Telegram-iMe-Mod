.class public Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;
.super Ljava/lang/Object;
.source "SelfStoryViewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryItemInternal"
.end annotation


# instance fields
.field public storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-void
.end method
