.class Lorg/telegram/ui/UsersSelectActivity$SpansContainer;
.super Landroid/view/ViewGroup;
.source "UsersSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/UsersSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpansContainer"
.end annotation


# instance fields
.field private addingSpan:Landroid/view/View;

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

.field private removingSpan:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/UsersSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    .line 221
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;Z)Z
    .locals 0

    .line 212
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    return p1
.end method


# virtual methods
.method public addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V
    .locals 4

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffff9L    # -3.5E-323

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 329
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$508(Lorg/telegram/ui/UsersSelectActivity;)I

    .line 331
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$600(Lorg/telegram/ui/UsersSelectActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(ZZ)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 338
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    if-eqz p2, :cond_2

    .line 340
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 341
    new-instance v0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer$1;-><init>(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 318
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 320
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 321
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
    .locals 13

    .line 226
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v0, 0x1a

    .line 228
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    const/16 v1, 0xa

    .line 230
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 232
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    if-ge v4, p2, :cond_8

    .line 235
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 236
    instance-of v11, v10, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v11, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v11, -0x80000000

    .line 239
    invoke-static {p1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v10, v11, v7}, Landroid/view/View;->measure(II)V

    .line 240
    iget-object v7, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v8, 0x8

    if-eq v10, v7, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    if-le v7, v0, :cond_1

    .line 241
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    move v5, v3

    .line 244
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    if-le v7, v0, :cond_2

    .line 245
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    move v6, v3

    :cond_2
    const/16 v7, 0xd

    .line 248
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 249
    iget-boolean v11, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    if-nez v11, :cond_6

    .line 250
    iget-object v11, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    if-ne v10, v11, :cond_3

    .line 251
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v7, v1

    .line 252
    invoke-virtual {v10, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_5

    .line 254
    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v7

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 255
    iget-object v7, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v9, [F

    aput v8, v12, v3

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 258
    iget-object v7, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v9, [F

    aput v8, v9, v3

    invoke-static {v10, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    int-to-float v7, v8

    .line 261
    invoke-virtual {v10, v7}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v7, v2

    .line 262
    invoke-virtual {v10, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    :cond_6
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v8, 0x9

    if-eq v10, v7, :cond_7

    .line 266
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v5, v7

    .line 268
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 271
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x174

    .line 272
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    goto :goto_3

    .line 274
    :cond_9
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v4, 0x9e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr p2, v4

    div-int/lit8 p2, p2, 0x3

    :goto_3
    sub-int v4, v0, v5

    const/16 v10, 0x28

    if-ge v4, p2, :cond_a

    .line 278
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    move v5, v3

    :cond_a
    sub-int v4, v0, v6

    if-ge v4, p2, :cond_b

    .line 281
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v1, p2

    .line 283
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    sub-int/2addr v0, v5

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/EditText;->measure(II)V

    .line 284
    iget-boolean p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    if-nez p2, :cond_10

    const/16 p2, 0x2a

    .line 285
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x10

    .line 286
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/UsersSelectActivity;->access$102(Lorg/telegram/ui/UsersSelectActivity;I)I

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 289
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v2, p2

    .line 290
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$200(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result p2

    if-eq p2, v2, :cond_c

    .line 291
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    new-array v1, v9, [I

    aput v2, v1, v3

    const-string v2, "containerHeight"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getTranslationX()F

    move-result p2

    int-to-float v0, v5

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_d

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [F

    aput v0, v4, v3

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getTranslationY()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$100(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_e

    .line 297
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v9, [F

    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v4}, Lorg/telegram/ui/UsersSelectActivity;->access$100(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 300
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 301
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 302
    iput-boolean v9, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    goto :goto_4

    .line 304
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/UsersSelectActivity;->access$202(Lorg/telegram/ui/UsersSelectActivity;I)I

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    int-to-float v0, v5

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$100(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTranslationY(F)V

    goto :goto_4

    .line 308
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_11

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$300(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    if-nez p2, :cond_11

    .line 310
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    .line 313
    :cond_11
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$200(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->access$302(Lorg/telegram/ui/UsersSelectActivity;Z)Z

    .line 362
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffff9L    # -3.5E-323

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 364
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$510(Lorg/telegram/ui/UsersSelectActivity;)I

    .line 366
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$600(Lorg/telegram/ui/UsersSelectActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animationStarted:Z

    .line 375
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 376
    new-instance v1, Lorg/telegram/ui/UsersSelectActivity$SpansContainer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer$2;-><init>(Lorg/telegram/ui/UsersSelectActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
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
