.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
.super Landroid/view/ViewGroup;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpansContainer"
.end annotation


# instance fields
.field private addingSpan:Landroid/view/View;

.field private animationIndex:I

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

.field private removingSpan:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    .line 175
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 172
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)Z
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)I
    .locals 0

    .line 166
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    return p0
.end method


# virtual methods
.method public addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 5

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$800(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$900(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(ZZ)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 298
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$202(Lorg/telegram/ui/GroupCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 310
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    nop

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

    .line 282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 284
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 285
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
    .locals 17

    move-object/from16 v0, p0

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 181
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/16 v3, 0x1a

    .line 182
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v2, v3

    const/16 v4, 0xa

    .line 184
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 186
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string v10, "translationY"

    const-string v11, "translationX"

    const/16 v12, 0x20

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-ge v7, v1, :cond_8

    .line 189
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 190
    instance-of v6, v15, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const/high16 v6, -0x80000000

    .line 193
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v15, v6, v12}, Landroid/view/View;->measure(II)V

    .line 194
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v12, 0x8

    if-eq v15, v6, :cond_1

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v3, :cond_1

    .line 195
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    const/4 v8, 0x0

    .line 198
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v9

    if-le v6, v3, :cond_2

    .line 199
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v4, v6

    const/4 v9, 0x0

    :cond_2
    const/16 v6, 0xd

    .line 202
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v8

    .line 203
    iget-boolean v13, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    if-nez v13, :cond_6

    .line 204
    iget-object v13, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    if-ne v15, v13, :cond_3

    .line 205
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v15, v6}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v6, v4

    .line 206
    invoke-virtual {v15, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_5

    .line 208
    invoke-virtual {v15}, Landroid/view/View;->getTranslationX()F

    move-result v6

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_4

    .line 209
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v13, v14, [F

    const/16 v16, 0x0

    aput v12, v13, v16

    invoke-static {v15, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    .line 211
    :goto_1
    invoke-virtual {v15}, Landroid/view/View;->getTranslationY()F

    move-result v6

    int-to-float v11, v5

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_6

    .line 212
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v12, v14, [F

    aput v11, v12, v16

    invoke-static {v15, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    int-to-float v6, v12

    .line 215
    invoke-virtual {v15, v6}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v6, v5

    .line 216
    invoke-virtual {v15, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 219
    :cond_6
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v10, 0x9

    if-eq v15, v6, :cond_7

    .line 220
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v6, v11

    add-int/2addr v8, v6

    .line 222
    :cond_7
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v9, v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 225
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x174

    .line 226
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 228
    :cond_9
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v6, 0x9e

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x3

    :goto_4
    sub-int v6, v3, v8

    const/16 v7, 0x28

    if-ge v6, v1, :cond_a

    .line 232
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v8, 0x0

    :cond_a
    sub-int v6, v3, v9

    if-ge v6, v1, :cond_b

    .line 235
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 237
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sub-int/2addr v3, v8

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/EditText;->measure(II)V

    .line 238
    iget-boolean v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    if-nez v1, :cond_10

    const/16 v1, 0x2a

    .line 239
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v4, v3

    const/16 v3, 0x10

    .line 240
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v8, v3

    .line 241
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCreateActivity;->access$102(Lorg/telegram/ui/GroupCreateActivity;I)I

    .line 242
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 243
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v5, v1

    .line 244
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 245
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    new-array v4, v14, [I

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v6, "containerHeight"

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/GroupCreateActivity;->access$402(Lorg/telegram/ui/GroupCreateActivity;I)I

    .line 248
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getTranslationX()F

    move-result v1

    int-to-float v3, v8

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_d

    .line 249
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    new-array v5, v14, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v4, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getTranslationY()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_e

    .line 252
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    new-array v4, v14, [F

    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v3, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    .line 254
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 255
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 256
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    .line 264
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 265
    iput-boolean v14, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    goto :goto_6

    .line 267
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/GroupCreateActivity;->access$302(Lorg/telegram/ui/GroupCreateActivity;I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/GroupCreateActivity;->access$402(Lorg/telegram/ui/GroupCreateActivity;I)I

    .line 268
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    int-to-float v3, v8

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 269
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTranslationY(F)V

    goto :goto_6

    .line 271
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 272
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$600(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    if-nez v1, :cond_11

    .line 273
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    .line 276
    :cond_11
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 277
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 4

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$602(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$900(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$800(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$202(Lorg/telegram/ui/GroupCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
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
