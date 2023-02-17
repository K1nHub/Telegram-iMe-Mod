.class public final Lcom/smedialink/ui/multifab/MiniFabsContainer;
.super Landroid/widget/LinearLayout;
.source "MiniFabsContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/multifab/MiniFabsContainer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMiniFabsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiniFabsContainer.kt\ncom/smedialink/ui/multifab/MiniFabsContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewExt.kt\ncom/smedialink/utils/extentions/common/ViewExtKt\n*L\n1#1,99:1\n1849#2,2:100\n187#3,4:102\n187#3,4:106\n*S KotlinDebug\n*F\n+ 1 MiniFabsContainer.kt\ncom/smedialink/ui/multifab/MiniFabsContainer\n*L\n38#1:100,2\n47#1:102,4\n51#1:106,4\n*E\n"
.end annotation


# instance fields
.field private final listener:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WfbVa3RBsZHuSQjoGw2Ff5tuOD4(Lcom/smedialink/ui/multifab/MiniFabsContainer;Lcom/smedialink/storage/domain/model/filters/FilterFab;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->createFab$lambda-7$lambda-6(Lcom/smedialink/ui/multifab/MiniFabsContainer;Lcom/smedialink/storage/domain/model/filters/FilterFab;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YO-015uqyPJ2Jdh5YgFcIliOH-E(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->show$lambda-4$lambda-3(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvGb0fV3fjhsxAy8uwxI5ALDha8(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->show$lambda-4$lambda-2(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/multifab/MiniFabsContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/multifab/MiniFabsContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/smedialink/ui/multifab/MiniFabsContainer;->listener:Lorg/fork/utils/Callbacks$Callback1;

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method private final createFab(Lcom/smedialink/storage/domain/model/filters/FilterFab;)Landroid/widget/ImageView;
    .locals 12

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setScale(Landroid/view/View;F)V

    .line 70
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x2b

    const-string v2, "chats_actionBackground"

    const-string v3, "chats_actionPressedBackground"

    .line 71
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x2

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 74
    new-instance v3, Landroid/animation/StateListAnimator;

    invoke-direct {v3}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 76
    sget-object v6, Landroid/widget/LinearLayout;->TRANSLATION_Z:Landroid/util/Property;

    new-array v8, v1, [F

    aput v2, v8, v7

    int-to-float v9, v1

    mul-float v9, v9, v2

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

    .line 77
    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 80
    new-instance v1, Lcom/smedialink/ui/multifab/MiniFabsContainer$createFab$1$2;

    invoke-direct {v1}, Lcom/smedialink/ui/multifab/MiniFabsContainer$createFab$1$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 86
    invoke-static {p1, v7}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    new-instance v1, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/multifab/MiniFabsContainer;Lcom/smedialink/storage/domain/model/filters/FilterFab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createFab$lambda-7$lambda-6(Lcom/smedialink/ui/multifab/MiniFabsContainer;Lcom/smedialink/storage/domain/model/filters/FilterFab;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->getListener()Lorg/fork/utils/Callbacks$Callback1;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final show$lambda-4$lambda-2(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final show$lambda-4$lambda-3(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getListener()Lorg/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/multifab/MiniFabsContainer;->listener:Lorg/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final setFabs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 40
    invoke-direct {p0, v0}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->createFab(Lcom/smedialink/storage/domain/model/filters/FilterFab;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    .line 41
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setScale(F)V
    .locals 4

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 188
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "getChildAt(i)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v1, p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setScale(Landroid/view/View;F)V

    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final show(Z)V
    .locals 5

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 188
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "getChildAt(i)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 55
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string v4, "fab.animate()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {v1, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->scale(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 57
    new-instance v3, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p0}, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda2;-><init>(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 58
    new-instance v3, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p0}, Lcom/smedialink/ui/multifab/MiniFabsContainer$$ExternalSyntheticLambda1;-><init>(ZLcom/smedialink/ui/multifab/MiniFabsContainer;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    .line 59
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-lt v2, v0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
