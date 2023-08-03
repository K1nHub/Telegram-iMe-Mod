.class public Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;
.super Ljava/lang/Object;
.source "StoryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionViewHolder"
.end annotation


# instance fields
.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public clipBottom:F

.field public clipParent:Landroid/view/View;

.field public clipTop:F

.field public crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

.field public drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

.field params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

.field public storyImage:Lorg/telegram/messenger/ImageReceiver;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2307
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 2308
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 2309
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2310
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2311
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 2312
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    .line 2313
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 2314
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    .line 2315
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 2316
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 2317
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    return-void
.end method
