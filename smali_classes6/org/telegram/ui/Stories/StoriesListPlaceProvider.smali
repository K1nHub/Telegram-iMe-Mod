.class public Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
.super Ljava/lang/Object;
.source "StoriesListPlaceProvider.java"

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;,
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;,
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;
    }
.end annotation


# instance fields
.field clipPoint:[I

.field public hasPaginationParams:Z

.field public hiddedStories:Z

.field private isHiddenArchive:Z

.field loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

.field public onlySelfStories:Z

.field public onlyUnreadStories:Z

.field private final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public static synthetic $r8$lambda$GcGj39BwTqfpIHG72GPWaqqQYwg(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->lambda$findView$1(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yb-Czm4lUBJoFCkK33jAqrebRSc(Landroid/graphics/Path;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->lambda$findView$0(Landroid/graphics/Path;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    .line 56
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 57
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    return-void
.end method

.method private static synthetic lambda$findView$0(Landroid/graphics/Path;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 3

    if-eqz p4, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    float-to-double p3, p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 115
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p3, p3

    .line 116
    iget p4, p2, Landroid/graphics/RectF;->right:F

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p4, v1

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr p4, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    const/16 p3, 0xb

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 117
    sget-object p2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private static synthetic lambda$findView$1(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 7

    .line 183
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    if-eqz p1, :cond_0

    .line 184
    iget-boolean p0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    int-to-float v4, p0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p5, p0

    float-to-int v5, p5

    const/16 v6, 0x1f

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 p0, 0x0

    .line 186
    aget p0, p2, p0

    int-to-float p0, p0

    const/4 p4, 0x1

    aget p2, p2, p4

    int-to-float p2, p2

    invoke-virtual {p3, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-virtual {p1, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    .line 47
    new-instance v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    return-object v0
.end method

.method private updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V
    .locals 2

    .line 239
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    if-eqz v1, :cond_1

    .line 243
    check-cast v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;->updateClip([I)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    const/4 v1, 0x1

    .line 245
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    goto :goto_0

    .line 246
    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v1, :cond_2

    .line 247
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 251
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    :goto_0
    return-void
.end method


# virtual methods
.method public findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x0

    .line 78
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 79
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 80
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 81
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 83
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 88
    :cond_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/DialogStoriesCell;

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 91
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v9

    if-nez v9, :cond_2

    .line 93
    iget-object v8, v6, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_2
    move v6, v7

    .line 95
    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v6, v9, :cond_16

    .line 96
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 98
    instance-of v10, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    .line 99
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 101
    iget-wide v13, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v13, v13, p1

    if-nez v13, :cond_15

    .line 102
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 103
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 104
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 105
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    .line 106
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 107
    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    const/4 v2, 0x0

    .line 108
    iput v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    iput v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 109
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 110
    iget-boolean v2, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFail:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 112
    new-instance v2, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    goto :goto_2

    .line 120
    :cond_3
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    :goto_2
    return v12

    .line 125
    :cond_4
    instance-of v10, v9, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v10, :cond_8

    .line 126
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/DialogCell;

    .line 127
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v13

    cmp-long v13, v13, p1

    if-nez v13, :cond_5

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v13, :cond_6

    :cond_5
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v13, :cond_15

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 128
    :cond_6
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 129
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 130
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 131
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 132
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v1, :cond_7

    .line 133
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 135
    :cond_7
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 136
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 139
    :cond_8
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v13, 0x2

    if-eqz v10, :cond_b

    .line 140
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 141
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v14, v1, :cond_15

    .line 142
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eq v3, v12, :cond_a

    if-ne v3, v13, :cond_9

    goto :goto_3

    .line 146
    :cond_9
    iget-object v1, v10, Lorg/telegram/ui/Cells/ChatMessageCell;->replyImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_4

    .line 144
    :cond_a
    :goto_3
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 148
    :goto_4
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 149
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 150
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 153
    :cond_b
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v10, :cond_d

    .line 154
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 155
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    if-ne v13, v1, :cond_15

    .line 156
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 157
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 158
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->noforwards:Z

    if-eqz v1, :cond_c

    .line 159
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_5

    .line 161
    :cond_c
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 163
    :goto_5
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 164
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 165
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 168
    :cond_d
    instance-of v10, v9, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v10, :cond_11

    .line 169
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 170
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    .line 172
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getStyle()I

    move-result v15

    if-ne v15, v12, :cond_e

    iget v15, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->storyId:I

    if-eq v15, v2, :cond_f

    :cond_e
    if-eqz v14, :cond_15

    .line 173
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-ne v15, v2, :cond_15

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    cmp-long v14, v14, p1

    if-nez v14, :cond_15

    .line 175
    :cond_f
    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    new-array v2, v13, [I

    if-eqz v1, :cond_10

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 180
    :cond_10
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 181
    iget-object v3, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object v3, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 182
    new-instance v3, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, v10, v1, v2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[I)V

    iput-object v3, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 191
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 192
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 193
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 196
    :cond_11
    instance-of v10, v9, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v10, :cond_12

    .line 197
    check-cast v9, Lorg/telegram/ui/Cells/UserCell;

    .line 198
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v13

    cmp-long v10, v13, p1

    if-nez v10, :cond_15

    .line 199
    iget-object v1, v9, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 200
    iget-object v2, v9, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 201
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 202
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 203
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 204
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 207
    :cond_12
    instance-of v10, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    if-eqz v10, :cond_14

    .line 208
    check-cast v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 209
    iget-wide v13, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    cmp-long v10, v13, p1

    if-nez v10, :cond_15

    .line 210
    iget-object v1, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 211
    iget-object v2, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 212
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 213
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 214
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getAlphaInternal()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_13

    .line 216
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    .line 217
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    :cond_13
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 222
    :cond_14
    instance-of v10, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v10, :cond_15

    .line 223
    check-cast v9, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 224
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v13

    cmp-long v10, v13, p1

    if-nez v10, :cond_15

    .line 225
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 226
    iget-object v1, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 227
    iget-object v1, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 228
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 229
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 230
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_16
    return v7
.end method

.method public loadNext(Z)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;->loadNext(Z)V

    :cond_0
    return-void
.end method

.method public preLayout(JILjava/lang/Runnable;)V
    .locals 0

    .line 62
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p3, :cond_1

    .line 63
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 64
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 70
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz p1, :cond_2

    .line 71
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->sortHiddenStories()V

    .line 73
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setPaginationParaments(ZZZ)Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;
    .locals 0

    .line 263
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hiddedStories:Z

    .line 264
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlyUnreadStories:Z

    .line 265
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlySelfStories:Z

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hasPaginationParams:Z

    return-object p0
.end method

.method public with(Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

    return-object p0
.end method
