.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;
.super Landroid/widget/ScrollView;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createScrollView()Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1337:1\n32#2:1338\n95#2,14:1339\n1#3:1353\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1\n*L\n569#1:1338\n569#1:1339,14\n*E\n"
.end annotation


# instance fields
.field private actionBarAnimator:Landroid/animation/AnimatorSet;

.field private isLayoutDirty:Z

.field private final location:[I

.field private final tempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    .line 535
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 536
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->location:[I

    .line 537
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->tempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->isLayoutDirty:Z

    return-void
.end method

.method public static final synthetic access$getActionBarAnimator$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$setActionBarAnimator$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->isLayoutDirty:Z

    .line 613
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .line 544
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 545
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 546
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->location:[I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 547
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->location:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p3

    const/4 p4, 0x0

    if-ge p1, p3, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p4

    .line 548
    :goto_0
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    move p3, p2

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-eq p1, p3, :cond_7

    .line 550
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 551
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->actionBarAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_4

    if-eqz p3, :cond_3

    .line 552
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 553
    :cond_3
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->actionBarAnimator:Landroid/animation/AnimatorSet;

    .line 555
    :cond_4
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 558
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object v2

    .line 559
    sget-object v3, Landroid/widget/ScrollView;->ALPHA:Landroid/util/Property;

    new-array v4, p2, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v6

    :goto_3
    aput v7, v4, p4

    .line 557
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, p4

    .line 563
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    .line 564
    sget-object v2, Landroid/widget/ScrollView;->ALPHA:Landroid/util/Property;

    new-array v3, p2, [F

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    aput v5, v3, p4

    .line 562
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, p2

    .line 556
    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x96

    .line 568
    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 101
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)V

    .line 107
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 555
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->actionBarAnimator:Landroid/animation/AnimatorSet;

    :cond_7
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focused"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 599
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->isLayoutDirty:Z

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->scrollToDescendant(Landroid/view/View;)V

    .line 603
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->isLayoutDirty:Z

    .line 608
    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method

.method public scrollToDescendant(Landroid/view/View;)V
    .locals 4

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 582
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 584
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/16 v2, 0x5a

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 583
    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 586
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-gez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method
