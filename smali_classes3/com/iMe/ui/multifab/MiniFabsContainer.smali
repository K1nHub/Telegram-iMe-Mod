.class public final Lcom/iMe/ui/multifab/MiniFabsContainer;
.super Landroid/widget/LinearLayout;
.source "MiniFabsContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/multifab/MiniFabsContainer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMiniFabsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiniFabsContainer.kt\ncom/iMe/ui/multifab/MiniFabsContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n*L\n1#1,114:1\n1855#2,2:115\n216#3,4:117\n216#3,4:121\n216#3,4:125\n*S KotlinDebug\n*F\n+ 1 MiniFabsContainer.kt\ncom/iMe/ui/multifab/MiniFabsContainer\n*L\n41#1:115,2\n51#1:117,4\n55#1:121,4\n69#1:125,4\n*E\n"
.end annotation


# instance fields
.field private final listener:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Fm5F4OboRAtV9sDG_W2ruE5RS3s(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/multifab/MiniFabsContainer;->show$lambda$4$lambda$2(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UEIL4HKn9EfaA9Rn5YkYuZ150Hs(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/multifab/MiniFabsContainer;->show$lambda$4$lambda$3(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-yVMlx2vava-1TvDsKW6V0MZug(Lcom/iMe/ui/multifab/MiniFabsContainer;Lcom/iMe/storage/domain/model/filters/FilterFab;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/multifab/MiniFabsContainer;->createFab$lambda$8$lambda$7(Lcom/iMe/ui/multifab/MiniFabsContainer;Lcom/iMe/storage/domain/model/filters/FilterFab;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/multifab/MiniFabsContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/multifab/MiniFabsContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/iMe/ui/multifab/MiniFabsContainer;->listener:Lcom/iMe/fork/utils/Callbacks$Callback1;

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, p2, p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method private final createFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 12

    .line 85
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setScale(Landroid/view/View;F)V

    .line 87
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x2

    .line 88
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 89
    new-instance v3, Landroid/animation/StateListAnimator;

    invoke-direct {v3}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 91
    sget-object v6, Landroid/widget/LinearLayout;->TRANSLATION_Z:Landroid/util/Property;

    new-array v8, v1, [F

    aput v2, v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v2

    aput v9, v8, v4

    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v5, v7, [I

    new-array v1, v1, [F

    aput v9, v1, v7

    aput v2, v1, v4

    .line 92
    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 95
    new-instance v1, Lcom/iMe/ui/multifab/MiniFabsContainer$createFab$1$2;

    invoke-direct {v1}, Lcom/iMe/ui/multifab/MiniFabsContainer$createFab$1$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 101
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt;->bindMini(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V

    .line 102
    new-instance v1, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/multifab/MiniFabsContainer;Lcom/iMe/storage/domain/model/filters/FilterFab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createFab$lambda$8$lambda$7(Lcom/iMe/ui/multifab/MiniFabsContainer;Lcom/iMe/storage/domain/model/filters/FilterFab;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/iMe/ui/multifab/MiniFabsContainer;->listener:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final show$lambda$4$lambda$2(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {p1, p0, v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final show$lambda$4$lambda$3(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {p1, p0, v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/iMe/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/multifab/MiniFabsContainer;->listener:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final setFabs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 43
    invoke-direct {p0, v0}, Lcom/iMe/ui/multifab/MiniFabsContainer;->createFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x24

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 44
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/multifab/MiniFabsContainer;->updateColors()V

    return-void
.end method

.method public final setScale(F)V
    .locals 4

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v2, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setScale(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final show(Z)V
    .locals 5

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 59
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-string v4, "fab.animate()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->scale(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p0}, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda1;-><init>(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p0}, Lcom/iMe/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda2;-><init>(ZLcom/iMe/ui/multifab/MiniFabsContainer;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateColors()V
    .locals 8

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v3, v2, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v3, :cond_0

    .line 71
    check-cast v2, Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x24

    .line 72
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 73
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    const/4 v6, -0x1

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v5, v6, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 74
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    .line 71
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
