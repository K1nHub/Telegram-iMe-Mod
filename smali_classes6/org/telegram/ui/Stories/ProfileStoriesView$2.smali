.class Lorg/telegram/ui/Stories/ProfileStoriesView$2;
.super Ljava/lang/Object;
.source "ProfileStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/ProfileStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;


# direct methods
.method public static synthetic $r8$lambda$0lq5ZZR1CL-tuaN98Dp2n6YB1ig(Lorg/telegram/ui/Stories/ProfileStoriesView$2;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->lambda$findView$0(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$findView$0(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 5

    .line 851
    iget-object v0, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 852
    iget-object v0, p4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 853
    iget-object v0, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 856
    :try_start_0
    invoke-virtual {p6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 857
    invoke-virtual {p6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p7

    const/high16 p7, 0x40000000    # 2.0f

    mul-float/2addr v3, p7

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 858
    invoke-virtual {p6}, Landroid/graphics/RectF;->centerY()F

    move-result p6

    .line 859
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p7

    mul-float/2addr v2, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, p7

    mul-float/2addr v3, v0

    .line 860
    iget-object p7, p4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float v0, v1, v2

    sub-float v4, p6, v3

    add-float/2addr v1, v2

    add-float/2addr p6, v3

    invoke-virtual {p7, v0, v4, v1, p6}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :catch_0
    iget-object p6, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {p6, p5, p2, p4}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$800(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    .line 865
    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 866
    iget-object p1, p4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 7

    const/4 p1, 0x0

    .line 814
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 815
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 816
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$300(Lorg/telegram/ui/Stories/ProfileStoriesView;)F

    move-result p2

    const p3, 0x3e4ccccd    # 0.2f

    cmpg-float p2, p2, p3

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-gez p2, :cond_0

    .line 817
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$400(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 818
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$400(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 820
    iput p3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 821
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    return p5

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    .line 828
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 829
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 830
    iget v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v2, p4, :cond_3

    .line 832
    iget-object p4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_1

    invoke-static {p4}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_2

    :cond_2
    move-object v0, p1

    :goto_2
    invoke-static {p4, v2, v0, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$600(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p4

    .line 833
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object v6, p4

    move-object v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-object v0, p1

    move-object v4, v0

    move-object v6, v4

    :goto_3
    if-nez v0, :cond_5

    return p2

    .line 841
    :cond_5
    iput-object v0, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 842
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 843
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 844
    iput p3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 845
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iput p3, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    .line 846
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .line 848
    new-instance v3, Landroid/graphics/RectF;

    iget-object p1, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v5, Landroid/graphics/RectF;

    iget-object p1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 850
    new-instance p1, Lorg/telegram/ui/Stories/ProfileStoriesView$2$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView$2;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    goto :goto_4

    .line 869
    :cond_6
    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    :goto_4
    return p5
.end method

.method public synthetic loadNext(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider$-CC;->$default$loadNext(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public preLayout(JILjava/lang/Runnable;)V
    .locals 0

    .line 876
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$700(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V

    .line 877
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method
