.class public Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
.super Ljava/lang/Object;
.source "StoriesListPlaceProvider.java"

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;,
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;
    }
.end annotation


# instance fields
.field clipPoint:[I

.field private isHiddenArchive:Z

.field private final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public static synthetic $r8$lambda$pBEnySBawy041leTKBy0aepVr-Q(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->lambda$findView$0(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 39
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    return-void
.end method

.method private static synthetic lambda$findView$0(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 7

    .line 149
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    if-eqz p1, :cond_0

    .line 150
    iget-boolean p0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
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

    .line 152
    aget p0, p2, p0

    int-to-float p0, p0

    const/4 p4, 0x1

    aget p2, p2, p4

    int-to-float p2, p2

    invoke-virtual {p3, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    .line 34
    new-instance v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    return-object v0
.end method

.method private updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V
    .locals 2

    .line 187
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    if-eqz v1, :cond_1

    .line 191
    check-cast v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;->updateClip([I)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    const/4 v1, 0x1

    .line 193
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    goto :goto_0

    .line 194
    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v1, :cond_2

    .line 195
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 199
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
    .locals 9

    const/4 v0, 0x0

    .line 60
    iput-object v0, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 61
    iput-object v0, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 62
    iput-object v0, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 63
    iput-object v0, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v1, :cond_1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_2
    move v0, v2

    .line 77
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 80
    instance-of v4, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 81
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 83
    iget-wide v6, v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_11

    .line 84
    iput-object v3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 85
    iget-object p1, v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 86
    iget-object p1, v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 87
    iget-object p1, v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    .line 88
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 89
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    const/4 p1, 0x0

    .line 90
    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    return v5

    .line 94
    :cond_3
    instance-of v4, v3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_6

    .line 95
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 96
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 97
    :cond_4
    iput-object v3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 98
    iget-object p1, v4, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 99
    iget-object p1, v4, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 100
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 101
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz p1, :cond_5

    .line 102
    iget-object p1, v4, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 104
    :cond_5
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    .line 107
    :cond_6
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x2

    if-eqz v4, :cond_9

    .line 108
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 109
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v7, p3, :cond_11

    .line 110
    iput-object v3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eq p5, v5, :cond_8

    if-ne p5, v6, :cond_7

    goto :goto_1

    .line 114
    :cond_7
    iget-object p1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->replyImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_2

    .line 112
    :cond_8
    :goto_1
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 116
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 117
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    .line 120
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_b

    .line 121
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 122
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v6, p3, :cond_11

    .line 123
    iput-object v3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 124
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 125
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->noforwards:Z

    if-eqz p1, :cond_a

    .line 126
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_3

    .line 128
    :cond_a
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 130
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 131
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    .line 134
    :cond_b
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v4, :cond_f

    .line 135
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 136
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    .line 138
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getStyle()I

    move-result v8

    if-ne v8, v5, :cond_c

    iget v8, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->storyId:I

    if-eq v8, p4, :cond_d

    :cond_c
    if-eqz v7, :cond_11

    .line 139
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v8, p4, :cond_11

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_11

    .line 141
    :cond_d
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    new-array p2, v6, [I

    if-eqz p1, :cond_e

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 146
    :cond_e
    iput-object v3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 147
    iget-object p3, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 148
    new-instance p3, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;

    invoke-direct {p3, v4, p1, p2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[I)V

    iput-object p3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 157
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 158
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    .line 161
    :cond_f
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_10

    .line 162
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .line 163
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_11

    .line 164
    iget-object p1, v3, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 165
    iget-object p2, v3, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 166
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 167
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 168
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    .line 171
    :cond_10
    instance-of v4, v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    if-eqz v4, :cond_11

    .line 172
    check-cast v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 173
    iget-wide v6, v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_11

    .line 174
    iget-object p1, v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 175
    iget-object p2, v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 176
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 177
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 178
    invoke-direct {p0, p6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v5

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_12
    return v2
.end method

.method public preLayout(JILjava/lang/Runnable;)V
    .locals 0

    .line 44
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p3, :cond_1

    .line 45
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 46
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz p1, :cond_2

    .line 53
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->sortHiddenStories()V

    .line 55
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
