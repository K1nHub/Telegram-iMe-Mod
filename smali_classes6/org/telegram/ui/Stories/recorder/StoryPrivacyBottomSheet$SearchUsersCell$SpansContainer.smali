.class public Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;
.super Landroid/view/ViewGroup;
.source "StoryPrivacyBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpansContainer"
.end annotation


# instance fields
.field private addingSpan:Landroid/view/View;

.field private animAddingSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animRemovingSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animationStarted:Z

.field private animators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private final removingSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;


# direct methods
.method public static synthetic $r8$lambda$OjCk1mgcO5tSVd47cDW4CcjQEoc(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->lambda$onMeasure$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Landroid/content/Context;)V
    .locals 0

    .line 3176
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    .line 3177
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    .line 3166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    .line 3167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    .line 3169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 3161
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$13302(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 3161
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$13402(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Z)Z
    .locals 0

    .line 3161
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    return p1
.end method

.method static synthetic access$13502(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 3161
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->addingSpan:Landroid/view/View;

    return-object p1
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private setupEndValues()V
    .locals 4

    .line 3466
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3467
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3469
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3470
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3471
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 3472
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3474
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3475
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3476
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 3477
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3479
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3480
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 3294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 3296
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 3297
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 3182
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3183
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/16 v3, 0xe

    .line 3184
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v2, v3

    const/16 v4, 0xa

    .line 3186
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 3188
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const/16 v10, 0x1c

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x1

    if-ge v7, v1, :cond_9

    .line 3191
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3192
    instance-of v14, v13, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v14, :cond_0

    move/from16 p2, v1

    goto/16 :goto_5

    :cond_0
    const/high16 v14, -0x80000000

    .line 3195
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v13, v14, v10}, Landroid/view/View;->measure(II)V

    .line 3196
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    if-nez v10, :cond_1

    .line 3197
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v8

    if-le v14, v3, :cond_1

    .line 3198
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v8, v14

    add-int/2addr v5, v8

    move v8, v6

    .line 3201
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v9

    if-le v14, v3, :cond_2

    .line 3202
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    add-int/2addr v4, v9

    move v9, v6

    :cond_2
    const/4 v14, 0x7

    .line 3205
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v8

    .line 3206
    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    if-nez v11, :cond_6

    if-eqz v10, :cond_3

    .line 3208
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v9

    int-to-float v11, v11

    invoke-virtual {v13, v11}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v11, v4

    .line 3209
    invoke-virtual {v13, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 3210
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 3211
    invoke-virtual {v13}, Landroid/view/View;->getTranslationX()F

    move-result v11

    int-to-float v14, v15

    cmpl-float v11, v11, v14

    if-eqz v11, :cond_4

    .line 3212
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 p2, v1

    new-array v1, v12, [F

    aput v14, v1, v6

    invoke-static {v13, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move/from16 p2, v1

    .line 3214
    :goto_1
    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float v11, v5

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_7

    .line 3215
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v12, [F

    aput v11, v12, v6

    invoke-static {v13, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move/from16 p2, v1

    int-to-float v1, v15

    .line 3218
    invoke-virtual {v13, v1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v1, v5

    .line 3219
    invoke-virtual {v13, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 p2, v1

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    .line 3223
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v1, v11

    add-int/2addr v8, v1

    goto :goto_4

    :cond_8
    const/4 v10, 0x4

    .line 3225
    :goto_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v9, v1

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    .line 3228
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x18a

    .line 3229
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_6

    .line 3231
    :cond_a
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v7, 0x88

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x3

    :goto_6
    sub-int v7, v3, v8

    const/16 v13, 0x24

    if-ge v7, v1, :cond_b

    .line 3235
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    move v8, v6

    :cond_b
    sub-int v7, v3, v9

    if-ge v7, v1, :cond_c

    .line 3238
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 3240
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sub-int/2addr v3, v8

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/widget/EditText;->measure(II)V

    .line 3241
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)I

    move-result v7

    if-le v3, v7, :cond_d

    move v3, v12

    goto :goto_7

    :cond_d
    move v3, v6

    :goto_7
    invoke-virtual {v1, v3, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(ZZ)V

    .line 3242
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    if-nez v1, :cond_14

    const/16 v1, 0x26

    .line 3243
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v4, v3

    const/16 v3, 0x10

    .line 3244
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v8, v3

    .line 3245
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12602(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;I)I

    .line 3246
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_11

    .line 3247
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v5, v1

    .line 3248
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iput v5, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    .line 3249
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->containerHeight:F

    int-to-float v4, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_e

    .line 3250
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3252
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getTranslationX()F

    move-result v1

    int-to-float v3, v8

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_f

    .line 3253
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v12, [F

    aput v3, v7, v6

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3255
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getTranslationY()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_10

    .line 3256
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v12, [F

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3258
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 3259
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3260
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3261
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3262
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3263
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3264
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 3265
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    .line 3268
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iput v4, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    int-to-float v3, v4

    iput v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->containerHeight:F

    .line 3269
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    int-to-float v3, v8

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 3270
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 3271
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3272
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3274
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3275
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3276
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    .line 3279
    :cond_13
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13002(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;I)I

    goto :goto_9

    .line 3280
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_16

    .line 3281
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3282
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    .line 3284
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3285
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/16 v3, 0x82

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 3286
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v1, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    .line 3289
    :cond_16
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->containerHeight:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllSpans(Z)V
    .locals 6

    .line 3409
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13102(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    .line 3411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3412
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3413
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3414
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 3416
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 3417
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3420
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->setupEndValues()V

    if-eqz p1, :cond_1

    .line 3422
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3423
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3424
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3443
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3444
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3445
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3446
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 3447
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 3448
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3449
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3451
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 3454
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 3455
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 3457
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3458
    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3459
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3460
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 3462
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 4

    .line 3302
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13102(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    .line 3303
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3304
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3306
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->setupEndValues()V

    const/4 v0, 0x0

    .line 3307
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3308
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3309
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3326
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3327
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3328
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3330
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3331
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3332
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3333
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3335
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateSpans(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;Z)V"
        }
    .end annotation

    .line 3339
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13102(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    .line 3341
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3342
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3344
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3345
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v2, v0

    .line 3347
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 3348
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3351
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->setupEndValues()V

    if-eqz p3, :cond_2

    .line 3353
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3354
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3355
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3375
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 3376
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 3377
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    move p3, v0

    .line 3378
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge p3, v1, :cond_1

    .line 3379
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 3380
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animRemovingSpans:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3382
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 3385
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 3386
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 3387
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animAddingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3388
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_3

    invoke-static {p3, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_4

    invoke-static {p3, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3390
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_5

    invoke-static {p3, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    move p3, v0

    .line 3393
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_3

    .line 3394
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 3397
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3398
    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3399
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->animationStarted:Z

    .line 3400
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 3402
    :cond_4
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 3403
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3405
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
