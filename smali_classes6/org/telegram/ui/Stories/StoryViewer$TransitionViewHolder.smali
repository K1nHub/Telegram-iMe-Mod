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
.field public alpha:F

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public bgPaint:Landroid/graphics/Paint;

.field public clipBottom:F

.field public clipParent:Landroid/view/View;

.field public clipTop:F

.field public crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

.field public drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

.field params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

.field public storyId:I

.field public storyImage:Lorg/telegram/messenger/ImageReceiver;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2504
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 2511
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 2512
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 2513
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2514
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2515
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 2516
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    .line 2517
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 2518
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    .line 2519
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    .line 2520
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 2521
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    const/4 v1, 0x0

    .line 2522
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    .line 2523
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2524
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    return-void
.end method
