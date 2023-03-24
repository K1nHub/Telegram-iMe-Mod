.class public Landroidx/recyclerview/widget/ChatListItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "ChatListItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;,
        Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final activity:Lorg/telegram/ui/ChatActivity;

.field animators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

.field private greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field groupIdToEnterDelay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private reversePositions:Z

.field runOnAnimationsEnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private shouldAnimateEnterFromBottom:Z

.field private willChangedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field private willRemovedGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HFYRyk-QBtlNMhsEJOKpNGYKdHg(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateMoveImpl$2(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6NF1QNEkOEorYukr6sJmlBpXks(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateMoveImpl$3(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pib8wkSmkGefswTPiW4J3zKV2Ag(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateMoveImpl$6(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TUfwrQFHTi-PiFNr6hqnAijdilY(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateAddImpl$7(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fMA4B-9JeOB9-Sk0vsM3Ncxldsc(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$runAlphaEnterTransition$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oWvvE_vCcIm2hWE-QJCo9cgj9xI(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateMoveImpl$4(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qU3fo_TJWuDhTirB9fvoFTipmO4(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateMoveImpl$5(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wgAhkmlJimTkWjuWDt7_4VCnHdc(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 40
    new-instance v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v1, 0x3fc97f367f967398L    # 0.19919472913616398

    const-wide v3, 0x3f85ccccccccccd0L    # 0.010644531250000006

    const-wide v5, 0x3fd1de90faad771eL    # 0.27920937042459737

    const-wide v7, 0x3fed20cccccccccdL    # 0.91025390625

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v9, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    .line 61
    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 62
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    .line 63
    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 64
    sget-object p1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->alwaysCreateMoveAnimationIfPossible:Z

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/Components/ChatGreetingsView;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    return-object p0
.end method

.method private cancelAnimators()V
    .locals 2

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1028
    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1029
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1031
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$animateAddImpl$7(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1284
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    .line 1285
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput p9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 1286
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    sub-float/2addr v1, p9

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    mul-float/2addr p5, v1

    mul-float/2addr p6, p9

    add-float/2addr p5, p6

    mul-float/2addr p7, v1

    mul-float/2addr p8, p9

    add-float/2addr p7, p8

    invoke-virtual {v0, p1, p3, p5, p7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1294
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$2(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 723
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    .line 724
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p8

    mul-float/2addr v0, v1

    iget v2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    mul-float/2addr v2, p8

    add-float/2addr v0, v2

    .line 725
    iget v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    mul-float/2addr v2, v1

    iget v3, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    mul-float/2addr v3, p8

    add-float/2addr v2, v3

    .line 726
    iget v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    mul-float/2addr v3, v1

    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    mul-float/2addr v4, p8

    add-float/2addr v3, v4

    .line 727
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    mul-float/2addr p0, v1

    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    mul-float/2addr v4, p8

    add-float/2addr p0, v4

    if-eqz p2, :cond_0

    mul-float/2addr p3, v1

    mul-float/2addr p4, p8

    add-float/2addr p3, p4

    .line 731
    iput p3, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 732
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 733
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput p3, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 738
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz p2, :cond_1

    .line 739
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x0

    aget p4, p6, p3

    int-to-float p4, p4

    mul-float/2addr p4, v1

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    aget p3, p1, p3

    int-to-float p3, p3

    mul-float/2addr p3, p8

    add-float/2addr p4, p3

    float-to-int p3, p4

    const/4 p4, 0x1

    aget v4, p6, p4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    aget p4, p1, p4

    int-to-float p4, p4

    mul-float/2addr p4, p8

    add-float/2addr v4, p4

    float-to-int p4, v4

    const/4 v4, 0x2

    aget v5, p6, v4

    int-to-float v5, v5

    mul-float/2addr v5, v1

    aget v4, p1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p8

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x3

    aget p6, p6, v5

    int-to-float p6, p6

    mul-float/2addr p6, v1

    aget p1, p1, v5

    int-to-float p1, p1

    mul-float/2addr p1, p8

    add-float/2addr p6, p1

    float-to-int p1, p6

    invoke-virtual {p2, p3, p4, v4, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 747
    :cond_1
    invoke-virtual {p5, v0, v2, v3, p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    .line 748
    iget-object p0, p7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$3(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 766
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 767
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-eqz v0, :cond_0

    .line 768
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 769
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 770
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 771
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    iput p0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    goto :goto_0

    .line 773
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 774
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 775
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 776
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p3

    sub-float/2addr p0, p3

    iput p0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 778
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$4(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 801
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    .line 802
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetTop:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    .line 803
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    .line 804
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetLeft:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    .line 805
    iget p1, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetRight:I

    int-to-float p1, p1

    mul-float/2addr p1, p6

    iput p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    if-eqz p2, :cond_0

    mul-float/2addr p3, p6

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p6

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    .line 807
    iput p3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    :cond_0
    if-eqz p5, :cond_1

    .line 810
    invoke-virtual {p5}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$5(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 827
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 828
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$6(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 838
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 839
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$runAlphaEnterTransition$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 184
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 105
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->onListItemAnimatorTick()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void
.end method

.method private restoreTransitionParams(Landroid/view/View;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1047
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1048
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1049
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1051
    instance-of v1, p1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v1, :cond_1

    .line 1052
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 1053
    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 1054
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->setAnimating(Z)V

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1056
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1060
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_2

    .line 1061
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->resetAnimation()V

    .line 1062
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_0

    .line 1064
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private runAlphaEnterTransition()V
    .locals 8

    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 119
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 120
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 121
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 128
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 137
    new-instance v5, Landroidx/recyclerview/widget/ChatListItemAnimator$1;

    invoke-direct {v5, p0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$1;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;)V

    .line 147
    iget-boolean v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->delayAnimations:Z

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveAnimationDelay()J

    move-result-wide v6

    invoke-static {v1, v5, v6, v7}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$2;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$2;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;)V

    .line 170
    iget-boolean v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->delayAnimations:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 172
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 174
    :cond_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 184
    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda7;->INSTANCE:Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda7;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 186
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_3

    .line 188
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-void
.end method

.method private runMessageEnterTransition()V
    .locals 6

    .line 193
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 194
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 195
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 196
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 203
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 204
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 205
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_1

    .line 206
    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 207
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 215
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 217
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_5

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 223
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V

    goto :goto_3

    .line 225
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    if-eqz v3, :cond_7

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 234
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_4

    .line 236
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 267
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 268
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 269
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 271
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    .line 274
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->messageEntering:Z

    .line 277
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1226
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "animate add impl"

    .line 1227
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1229
    :cond_0
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1230
    iget-object v0, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v8, v0, :cond_1

    .line 1232
    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1234
    :cond_1
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1236
    instance-of v0, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_3

    .line 1237
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1238
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2

    new-array v1, v15, [Landroid/animation/Animator;

    .line 1239
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->ANIMATION_OFFSET_X:Landroid/util/Property;

    new-array v3, v12, [F

    .line 1240
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v4

    aput v4, v3, v14

    aput v13, v3, v15

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v14

    .line 1239
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1243
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1244
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 1245
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1251
    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v5, v0

    .line 1253
    instance-of v0, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_8

    .line 1254
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v8, v0, :cond_5

    .line 1256
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1259
    :cond_4
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1260
    move-object v2, v9

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1261
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1262
    iget-object v1, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    .line 1263
    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v3, v0

    .line 1264
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    iget-object v4, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    add-float/2addr v0, v4

    .line 1265
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    iget-object v10, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    add-float/2addr v4, v10

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    add-float/2addr v4, v10

    .line 1266
    iget-object v10, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1267
    iget-object v14, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v14, v14, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    .line 1268
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v26

    .line 1269
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v27

    sub-float v19, v1, v0

    sub-float v21, v3, v4

    .line 1273
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    .line 1274
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    .line 1276
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v15, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 1277
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v15, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 1278
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    add-float v1, v3, v19

    add-float v15, v3, v21

    invoke-virtual {v0, v1, v15, v10, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    new-array v0, v12, [F

    .line 1280
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 1283
    new-instance v0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda6;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v22, v10

    move/from16 v23, v26

    move/from16 v24, v14

    move/from16 v25, v27

    invoke-direct/range {v16 .. v25}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFF)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1296
    new-instance v10, Landroidx/recyclerview/widget/ChatListItemAnimator$9;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v16, v5

    move/from16 v5, v26

    move/from16 v6, v27

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator$9;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/ui/Cells/ChatMessageCell;FFFF)V

    invoke-virtual {v15, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1307
    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-wide/from16 v5, v16

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v5

    .line 1309
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1312
    iget-object v1, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    iget-wide v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 1314
    iget-object v1, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    iget-wide v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1316
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_7
    :goto_1
    move-wide/from16 v5, v16

    :goto_2
    if-eqz v0, :cond_9

    .line 1319
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x8c

    .line 1320
    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_3

    :cond_8
    move-wide/from16 v16, v5

    :cond_9
    :goto_3
    const/4 v0, 0x1

    .line 1325
    :goto_4
    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 1326
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/4 v13, 0x0

    aput v10, v4, v13

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v4, v1

    invoke-static {v9, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v0, :cond_a

    const v0, 0x3f666666    # 0.9f

    .line 1328
    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1329
    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleY(F)V

    new-array v0, v1, [Landroid/animation/Animator;

    .line 1330
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v4

    aput v4, v3, v13

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {v9, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v13

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    .line 1331
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v3, v13

    aput v4, v3, v1

    invoke-static {v9, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1333
    invoke-virtual {v9, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1334
    invoke-virtual {v9, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1337
    :goto_5
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v8, v0, :cond_b

    const-wide/16 v0, 0x15e

    .line 1338
    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1339
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 1341
    :cond_b
    invoke-virtual {v11, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v0, 0xfa

    .line 1342
    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1345
    :goto_6
    new-instance v0, Landroidx/recyclerview/widget/ChatListItemAnimator$10;

    invoke-direct {v0, v7, v8, v9}, Landroidx/recyclerview/widget/ChatListItemAnimator$10;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1370
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 282
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 284
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float p2, p2

    .line 285
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 286
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 287
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    .line 288
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v4, p2

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    if-nez p2, :cond_2

    .line 290
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    if-eqz v4, :cond_5

    .line 292
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 293
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->canShowMessageTransition()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 295
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    .line 297
    new-instance p2, Lorg/telegram/ui/VoiceMessageEnterTransition;

    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v2, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    iget-object v8, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoiceMessageEnterTransition;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/view/ViewGroup;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 298
    invoke-virtual {p2}, Lorg/telegram/ui/VoiceMessageEnterTransition;->start()V

    goto :goto_1

    .line 301
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    .line 302
    new-instance p2, Lorg/telegram/ui/TextMessageEnterTransition;

    iget-object v5, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v5, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    iget-object v8, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/TextMessageEnterTransition;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Landroid/view/ViewGroup;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 303
    invoke-virtual {p2}, Lorg/telegram/ui/TextMessageEnterTransition;->start()V

    .line 306
    :cond_4
    :goto_1
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->startMessageTransition()V

    :cond_5
    const/4 p2, 0x0

    .line 309
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    .line 310
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$3;

    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$3;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 311
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 2

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 243
    iget-boolean p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    .line 245
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 247
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move p3, p2

    move v0, p3

    .line 253
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 254
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 258
    :cond_3
    :goto_2
    iget-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 259
    iget-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float v1, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return p1
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 8

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 888
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1

    .line 891
    :cond_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 892
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result p3

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    .line 896
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 897
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 898
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v2, p6, p4

    int-to-float v2, v2

    sub-float/2addr v2, p3

    float-to-int v2, v2

    sub-int v3, p7, p5

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 902
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_2

    .line 903
    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_1

    .line 905
    :cond_2
    invoke-virtual {v4, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 907
    :goto_1
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 908
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_4

    .line 911
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 912
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_3

    .line 913
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_2

    :cond_3
    neg-int v0, v2

    int-to-float v0, v0

    .line 915
    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 917
    :goto_2
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v0, v3

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 918
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 920
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    const/4 p1, 0x1

    return p1
.end method

.method animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 6

    .line 926
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 927
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 928
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 929
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 931
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 932
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 931
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 933
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 935
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 936
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/ChatListItemAnimator$7;

    invoke-direct {v5, p0, p1, v3, v0}, Landroidx/recyclerview/widget/ChatListItemAnimator$7;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v1, :cond_3

    .line 962
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 963
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 965
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$8;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 989
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 381
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 383
    instance-of v0, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 384
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 385
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    float-to-int v1, v1

    add-int v1, p3, v1

    .line 386
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 387
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, p4, v2

    goto :goto_0

    :cond_0
    move/from16 v2, p4

    :goto_0
    move-object v11, v0

    move v3, v1

    goto :goto_1

    .line 390
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v0, p3, v0

    const/4 v1, 0x0

    move/from16 v2, p4

    move v3, v0

    move-object v11, v1

    .line 392
    :goto_1
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int v4, v2, v0

    const/4 v12, 0x4

    new-array v13, v12, [I

    if-eqz v11, :cond_3

    .line 399
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    .line 400
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    .line 401
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    .line 402
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_2

    .line 404
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v16

    aget v16, v16, v6

    aput v16, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v0

    move/from16 v22, v5

    move v5, v1

    move/from16 v1, v22

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 407
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v0, p5, v3

    sub-int v12, p6, v4

    if-eqz v12, :cond_4

    neg-int v14, v12

    int-to-float v14, v14

    .line 411
    invoke-virtual {v10, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 414
    :cond_4
    new-instance v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    move v15, v0

    move-object v0, v14

    move v8, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v13

    move v13, v2

    move-object/from16 v2, p1

    move/from16 v18, v8

    move v8, v5

    move/from16 v5, p5

    move/from16 v19, v13

    move v13, v6

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    const/4 v0, 0x1

    if-eqz v11, :cond_2c

    .line 417
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->supportChangeAnimation()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v15, :cond_5

    if-nez v12, :cond_5

    .line 421
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0

    :cond_5
    if-eqz v15, :cond_6

    neg-int v1, v15

    int-to-float v1, v1

    .line 425
    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 427
    :cond_6
    iget-object v1, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    return v0

    .line 432
    :cond_7
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v15, :cond_8

    neg-int v3, v15

    int-to-float v3, v3

    .line 435
    invoke-virtual {v11, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    .line 438
    :cond_8
    instance-of v3, v9, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    if-eqz v3, :cond_18

    .line 439
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 440
    move-object v5, v9

    check-cast v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    .line 441
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v6, :cond_9

    iget v6, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_9

    iget v6, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_9

    move v6, v0

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-eqz v6, :cond_12

    .line 443
    iget-object v6, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 444
    iget-object v6, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 446
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 447
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 448
    iput v13, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 449
    iput v8, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    move/from16 v6, v19

    .line 450
    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    move/from16 v6, v18

    .line 451
    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    move-object/from16 v6, v17

    .line 452
    iput-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    goto :goto_5

    .line 454
    :cond_a
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 455
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    .line 456
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    .line 457
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    .line 458
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    :goto_5
    const/4 v6, 0x0

    .line 461
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    const/4 v6, 0x0

    :goto_6
    const/4 v8, 0x4

    if-ge v6, v8, :cond_c

    .line 463
    iget-object v8, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    aget v8, v8, v6

    iget-object v9, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    aget v9, v9, v6

    if-eq v8, v9, :cond_b

    .line 464
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 468
    :cond_c
    :goto_7
    iget v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    iget v8, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_d

    iget v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    iget v9, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_d

    iget v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    iget v9, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_d

    iget v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    iget v9, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_d

    iget-boolean v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-nez v6, :cond_d

    const/4 v6, 0x0

    .line 470
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 471
    iput-boolean v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    goto :goto_a

    .line 473
    :cond_d
    iput v8, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    .line 474
    iget v6, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    iput v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    .line 475
    iget v6, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    iput v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    .line 476
    iget v5, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    iput v5, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    if-eqz v2, :cond_f

    .line 478
    iget-boolean v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eq v5, v8, :cond_f

    if-eqz v8, :cond_e

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    .line 479
    :goto_8
    iput v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 481
    :cond_f
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v5, :cond_11

    .line 482
    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v6

    if-ne v5, v6, :cond_10

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 483
    iput-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_10

    .line 485
    iget-object v8, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v9

    aget v9, v9, v6

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 488
    :cond_10
    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 490
    :cond_11
    iget v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    iget v5, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    iget v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    iget v8, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    invoke-virtual {v11, v3, v5, v6, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    :cond_12
    :goto_a
    if-nez v2, :cond_18

    .line 494
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v3, :cond_18

    .line 495
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 496
    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v6

    if-ne v5, v6, :cond_14

    :cond_13
    if-nez v3, :cond_15

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 497
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    if-eq v5, v6, :cond_15

    :cond_14
    move v5, v0

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_16

    .line 498
    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 499
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v6

    if-ne v5, v6, :cond_16

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 500
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v6

    if-eq v5, v6, :cond_18

    .line 501
    :cond_16
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    .line 502
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    if-eqz v3, :cond_17

    .line 504
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v3

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iput v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    goto :goto_c

    .line 506
    :cond_17
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v3

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iput v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    .line 508
    :goto_c
    iput-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    .line 510
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 512
    iget v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 513
    iget v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 514
    iget v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 515
    iget v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 517
    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 518
    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_18
    if-eqz v2, :cond_27

    .line 524
    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 525
    iget-object v3, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    .line 526
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/RecyclerListView;

    .line 533
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    move/from16 v20, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 535
    :goto_d
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_24

    .line 536
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 538
    instance-of v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_22

    .line 539
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 540
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    if-ne v3, v2, :cond_22

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_22

    .line 542
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v17

    add-int v3, v3, v17

    .line 543
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v17

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v18

    move-object/from16 p6, v2

    add-int v2, v17, v18

    .line 544
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v17

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v18

    move/from16 v19, v12

    add-int v12, v17, v18

    .line 545
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v17

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v18

    move/from16 v21, v15

    add-int v15, v17, v18

    if-eqz v13, :cond_19

    if-ge v3, v13, :cond_1a

    :cond_19
    move v13, v3

    :cond_1a
    if-eqz v4, :cond_1b

    if-le v2, v4, :cond_1c

    :cond_1b
    move v4, v2

    .line 555
    :cond_1c
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    if-eqz v0, :cond_23

    :cond_1d
    if-eqz v9, :cond_1e

    if-ge v12, v9, :cond_1f

    :cond_1e
    move v9, v12

    :cond_1f
    if-eqz v10, :cond_20

    if-le v15, v10, :cond_21

    :cond_20
    move v10, v15

    :cond_21
    const/16 v20, 0x0

    goto :goto_e

    :cond_22
    move-object/from16 p6, v2

    move/from16 v19, v12

    move/from16 v21, v15

    :cond_23
    :goto_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, p6

    move/from16 v12, v19

    move/from16 v15, v21

    goto :goto_d

    :cond_24
    move/from16 v19, v12

    move/from16 v21, v15

    const/4 v0, 0x0

    .line 569
    iput-boolean v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    if-nez v9, :cond_25

    if-nez v10, :cond_25

    if-nez v13, :cond_25

    if-nez v4, :cond_25

    .line 572
    iput-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 573
    iput-boolean v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    goto :goto_10

    :cond_25
    neg-int v0, v9

    .line 575
    iget v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    add-int/2addr v0, v2

    iput v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetTop:I

    neg-int v2, v10

    .line 576
    iget v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    add-int/2addr v2, v3

    iput v2, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetBottom:I

    neg-int v3, v13

    .line 577
    iget v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    add-int/2addr v3, v8

    iput v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetLeft:I

    neg-int v4, v4

    .line 578
    iget v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    add-int/2addr v4, v8

    iput v4, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetRight:I

    const/4 v8, 0x1

    .line 580
    iput-boolean v8, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 581
    iput-boolean v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    int-to-float v0, v0

    .line 582
    iput v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    int-to-float v0, v2

    .line 583
    iput v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    int-to-float v0, v3

    .line 584
    iput v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    int-to-float v0, v4

    .line 585
    iput v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    .line 587
    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v0, :cond_26

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_26
    const/4 v4, 0x0

    :goto_f
    iput v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    const/4 v0, 0x0

    .line 589
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 590
    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    :goto_10
    move/from16 v0, v20

    .line 593
    iput-boolean v0, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    goto :goto_11

    :cond_27
    move/from16 v19, v12

    move/from16 v21, v15

    .line 597
    :goto_11
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_29

    .line 599
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    .line 600
    iget-object v2, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v2, :cond_28

    .line 603
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 604
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 605
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 606
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    .line 608
    iput-boolean v6, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateRemoveGroup:Z

    iput-boolean v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 609
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    sub-int/2addr v2, v6

    iput v2, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    .line 610
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    sub-int/2addr v3, v6

    iput v3, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    .line 611
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    sub-int/2addr v4, v3

    iput v4, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    .line 612
    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    sub-int/2addr v5, v0

    iput v5, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    const/4 v0, 0x0

    .line 613
    iput-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    neg-int v0, v2

    int-to-float v0, v0

    .line 615
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 616
    iget v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 617
    iget v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 618
    iget v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    const/4 v2, 0x1

    .line 619
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    .line 621
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 622
    iget-object v0, v7, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_12

    :cond_28
    const/4 v2, 0x1

    .line 624
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    goto :goto_12

    :cond_29
    const/4 v2, 0x1

    .line 627
    :goto_12
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawPinnedBottom()Z

    move-result v0

    .line 628
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->drawPinnedBottomBackground:Z

    if-eq v3, v0, :cond_2a

    .line 629
    iput-boolean v2, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    const/4 v0, 0x0

    .line 630
    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    goto :goto_13

    :cond_2a
    const/4 v0, 0x0

    .line 633
    :goto_13
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange()Z

    move-result v1

    iput-boolean v1, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v1, :cond_2b

    .line 635
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 636
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    iput v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    :cond_2b
    if-nez v21, :cond_2f

    if-nez v19, :cond_2f

    .line 639
    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateRemoveGroup:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v14, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-nez v0, :cond_2f

    .line 640
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0

    :cond_2c
    move-object/from16 v0, p1

    move/from16 v19, v12

    move/from16 v21, v15

    .line 643
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v2, :cond_2d

    .line 644
    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    const/4 v0, 0x1

    .line 645
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/BotHelpCell;->setAnimating(Z)V

    goto :goto_14

    :cond_2d
    if-nez v21, :cond_2e

    if-nez v19, :cond_2e

    .line 648
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0

    :cond_2e
    if-eqz v21, :cond_2f

    move/from16 v0, v21

    neg-int v0, v0

    int-to-float v0, v0

    .line 652
    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 656
    :cond_2f
    :goto_14
    iget-object v0, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    const/4 v0, 0x1

    return v0
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    .line 663
    iget v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 664
    iget v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 666
    iget v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 667
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v12, v3, v2

    .line 670
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-eqz v12, :cond_0

    new-array v2, v15, [Landroid/animation/Animator;

    .line 673
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v15, [F

    aput v14, v4, v9

    invoke-static {v11, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 675
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    .line 679
    iget-object v1, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x2

    if-eqz v1, :cond_1

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v2, :cond_1

    .line 680
    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 681
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    new-array v3, v7, [F

    .line 683
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 684
    new-instance v4, Landroidx/recyclerview/widget/ChatListItemAnimator$4;

    invoke-direct {v4, v0, v1, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator$4;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/ui/Cells/BotHelpCell;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v15, [Landroid/animation/Animator;

    aput-object v3, v1, v9

    .line 696
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_d

    .line 697
    :cond_1
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_10

    .line 698
    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 699
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v5

    .line 700
    iget-object v1, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->ANIMATION_OFFSET_X:Landroid/util/Property;

    new-array v2, v15, [F

    aput v14, v2, v9

    invoke-static {v6, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v15, [Landroid/animation/Animator;

    aput-object v1, v2, v9

    .line 701
    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 703
    iget-boolean v1, v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-eqz v1, :cond_7

    .line 704
    iget v1, v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    iget v2, v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    iget v3, v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    iget v4, v8, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    invoke-virtual {v6, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    new-array v1, v7, [F

    .line 705
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 708
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, v5, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    :goto_0
    move/from16 v16, v1

    .line 709
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    :goto_1
    int-to-float v1, v1

    move/from16 v17, v1

    cmpl-float v1, v16, v17

    if-eqz v1, :cond_4

    move/from16 v18, v15

    goto :goto_2

    :cond_4
    move/from16 v18, v9

    :goto_2
    const/4 v1, 0x0

    .line 713
    iget-boolean v2, v5, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v2, :cond_6

    const/4 v1, 0x4

    new-array v2, v1, [I

    move v3, v9

    :goto_3
    if-ge v3, v1, :cond_5

    .line 716
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v19

    aget v19, v19, v3

    aput v19, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v19, v2

    goto :goto_4

    :cond_6
    move-object/from16 v19, v1

    .line 722
    :goto_4
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda1;

    move-object v1, v3

    move-object v2, v8

    move-object v14, v3

    move-object v3, v5

    move-object v15, v4

    move/from16 v4, v18

    move-object/from16 v23, v11

    move-object v11, v5

    move/from16 v5, v16

    move-object/from16 p2, v6

    move/from16 v6, v17

    move/from16 v24, v12

    move v12, v7

    move-object/from16 v7, p2

    move-object v12, v8

    move-object/from16 v8, v19

    move v10, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v15, v2, v10

    .line 750
    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    :cond_7
    move-object/from16 p2, v6

    move v10, v9

    move-object/from16 v23, v11

    move/from16 v24, v12

    move-object v11, v5

    move-object v12, v8

    .line 752
    :goto_5
    iget v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    if-nez v1, :cond_9

    iget v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    if-nez v1, :cond_9

    iget v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    if-nez v1, :cond_9

    iget v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 782
    iput v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 783
    iput v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    move-object/from16 v4, p2

    goto :goto_8

    :cond_9
    :goto_6
    const/4 v1, 0x0

    .line 754
    iget-object v2, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 755
    iget-object v2, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 757
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 758
    iget-boolean v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-eqz v3, :cond_a

    .line 759
    iget v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 760
    iget v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    goto :goto_7

    .line 762
    :cond_a
    iget v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 763
    iget v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    .line 765
    :goto_7
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda0;

    move-object/from16 v4, p2

    invoke-direct {v3, v12, v11, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x1

    new-array v5, v3, [Landroid/animation/Animator;

    aput-object v2, v5, v10

    .line 780
    invoke-virtual {v13, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 786
    :goto_8
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-nez v2, :cond_b

    .line 788
    iput-boolean v10, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 791
    :cond_b
    iget-boolean v3, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    new-array v5, v3, [F

    .line 792
    fill-array-data v5, :array_3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 793
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    move-object/from16 v6, p1

    move v7, v10

    .line 794
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object/from16 v22, v8

    check-cast v22, Lorg/telegram/ui/Components/RecyclerListView;

    .line 796
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 797
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    if-eqz v2, :cond_c

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v21, v14

    goto :goto_9

    :cond_c
    move/from16 v21, v1

    :goto_9
    cmpl-float v1, v8, v21

    if-eqz v1, :cond_d

    const/16 v19, 0x1

    goto :goto_a

    :cond_d
    move/from16 v19, v7

    .line 800
    :goto_a
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda3;

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move/from16 v20, v8

    invoke-direct/range {v16 .. v22}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 814
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$5;

    invoke-direct {v1, v0, v5}, Landroidx/recyclerview/widget/ChatListItemAnimator$5;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v3, v2, v7

    .line 821
    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_b

    :cond_e
    move-object/from16 v6, p1

    move v7, v10

    .line 824
    :goto_b
    iget-boolean v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 825
    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 826
    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda5;

    invoke-direct {v2, v11, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    .line 831
    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_c

    :cond_f
    const/4 v2, 0x1

    .line 834
    :goto_c
    iget-boolean v1, v12, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 835
    fill-array-data v1, :array_5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 836
    iput-boolean v2, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 837
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda4;

    invoke-direct {v3, v11, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    .line 841
    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    :cond_10
    :goto_d
    move-object v6, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    .line 845
    :cond_11
    :goto_e
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_12

    .line 846
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 848
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 849
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$6;

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v1, v0, v6, v3, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator$6;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 879
    iget-object v1, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 5

    .line 341
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "animate remove"

    .line 342
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 347
    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 348
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 350
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 351
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 357
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 360
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_3

    .line 361
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    neg-int v1, v4

    int-to-float v1, v1

    .line 363
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    .line 365
    :cond_2
    instance-of v1, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    if-eqz v1, :cond_4

    .line 366
    check-cast p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    .line 367
    iget v1, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    iget v2, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    iget v3, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    iget p2, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    invoke-virtual {p1, v1, v2, v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    neg-int p2, v4

    int-to-float p2, p2

    .line 371
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    :goto_0
    return v0
.end method

.method protected animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1375
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "animate remove impl"

    .line 1376
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1378
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1379
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1382
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1384
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1385
    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$11;

    invoke-direct {v2, p0, v0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator$11;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1402
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1404
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1038
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1042
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1043
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    return-void
.end method

.method public endAnimations()V
    .locals 5

    .line 1070
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "end animations"

    .line 1071
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1073
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 1074
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1077
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->cancelAnimators()V

    .line 1079
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    .line 1082
    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1083
    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    .line 1085
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1087
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 1088
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1089
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1090
    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1091
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1093
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 1095
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1096
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1097
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1098
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1100
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 1102
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1103
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1104
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1105
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1107
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    .line 1109
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1111
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1116
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_a

    .line 1118
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_9

    .line 1121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 1122
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1123
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1124
    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1126
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1127
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1131
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_d

    .line 1133
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1134
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-ltz v2, :cond_c

    .line 1136
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1137
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1138
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1140
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1141
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1145
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_10

    .line 1147
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_f

    .line 1150
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 1151
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1152
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1156
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1157
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1158
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1159
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1161
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method protected endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 1165
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "end change if necessary"

    .line 1166
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1168
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1174
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_2

    .line 1175
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 1176
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_3

    .line 1177
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 1182
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1183
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_3
    return v3
.end method

.method public getChangeDuration()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method protected getMoveAnimationDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1196
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1197
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-boolean v1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    goto/16 :goto_2

    .line 1199
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-nez v2, :cond_3

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-nez v2, :cond_3

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-nez v2, :cond_3

    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-nez v0, :cond_3

    .line 1200
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1202
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1203
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    .line 1204
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1205
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 1206
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1207
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 1208
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 1209
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 1210
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 1211
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    .line 1212
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 1213
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 1214
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1220
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public groupWillTransformToSingleMessage(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V
    .locals 3

    .line 1189
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 2

    .line 1017
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAllAnimationsDone()V

    .line 1019
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1020
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1023
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->cancelAnimators()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1434
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    return-void
.end method

.method public onGreetingStickerTransition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/ChatGreetingsView;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1458
    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    const/4 p1, 0x0

    .line 1459
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    return-void
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 996
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    .line 997
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p3, :cond_0

    .line 998
    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 999
    new-instance p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;)V

    .line 1000
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 1001
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 1002
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 1003
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 1005
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    .line 1006
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    .line 1007
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    .line 1008
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    .line 1009
    iget p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    iput p1, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    return-object p3

    :cond_0
    return-object p1
.end method

.method public runPendingAnimations()V
    .locals 6

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 72
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 73
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 74
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move v0, v2

    move v3, v0

    .line 81
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 82
    iget-boolean v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->reversePositions:Z

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 84
    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    sub-int/2addr v4, v1

    if-ne v5, v4, :cond_3

    goto :goto_2

    .line 88
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 95
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAnimationStart()V

    if-eqz v2, :cond_6

    .line 98
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->runMessageEnterTransition()V

    goto :goto_3

    .line 100
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->runAlphaEnterTransition()V

    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 103
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setReversePositions(Z)V
    .locals 0

    .line 1463
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->reversePositions:Z

    return-void
.end method

.method public setShouldAnimateEnterFromBottom(Z)V
    .locals 0

    .line 1408
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    return-void
.end method

.method public willAddedFromAlpha(Landroid/view/View;)Z
    .locals 2

    .line 1446
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1449
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1451
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public willRemoved(Landroid/view/View;)Z
    .locals 2

    .line 1438
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1440
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
