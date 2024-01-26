.class Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;
.super Landroid/view/ViewGroup;
.source "InviteMembersBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteMembersBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpansContainer"
.end annotation


# instance fields
.field addAnimation:Z

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

.field final synthetic this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$3qYvcRV7eVAimOQLC6ESsjUfZSY(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->lambda$onMeasure$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$73m1bFZkUvIHhWFzsFSgkI0UlWA(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->lambda$onMeasure$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbexX3-3xGluVVwCIF94GXeS37U(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->lambda$onMeasure$2(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    .line 1134
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;Z)Z
    .locals 0

    .line 1125
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    return p1
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1125
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    return-object p1
.end method

.method private synthetic lambda$onMeasure$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3002(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onMeasure$1(I)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private synthetic lambda$onMeasure$2(I)V
    .locals 2

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method


# virtual methods
.method public addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1268
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addAnimation:Z

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1275
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    if-eqz p2, :cond_1

    .line 1277
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3102(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1278
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$3;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1285
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1286
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1287
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1288
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_1
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

    .line 1260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 1262
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 1263
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

    .line 1139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 1140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v0, 0x1a

    .line 1141
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    const/16 v1, 0xa

    .line 1143
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 1145
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, p2, :cond_8

    .line 1148
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1149
    instance-of v9, v8, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v9, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v9, -0x80000000

    .line 1152
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/16 v10, 0x20

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 1153
    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v10, 0x8

    if-eq v8, v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v5

    if-le v9, v0, :cond_1

    .line 1154
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v2, v5

    move v5, v3

    .line 1157
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    if-le v9, v0, :cond_2

    .line 1158
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    move v6, v3

    :cond_2
    const/16 v9, 0xd

    .line 1161
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v5

    .line 1162
    iget-boolean v11, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    if-nez v11, :cond_6

    .line 1163
    iget-object v11, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    if-ne v8, v11, :cond_3

    .line 1164
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v7, v1

    .line 1165
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_5

    .line 1167
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v9

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    .line 1168
    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v7, [F

    aput v10, v12, v3

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v9

    int-to-float v10, v2

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    .line 1171
    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    aput v10, v7, v3

    invoke-static {v8, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    int-to-float v7, v10

    .line 1174
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v7, v2

    .line 1175
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1178
    :cond_6
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    const/16 v9, 0x9

    if-eq v8, v7, :cond_7

    .line 1179
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v7, v10

    add-int/2addr v5, v7

    .line 1181
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 p2, 0x2a

    .line 1184
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 1185
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v2, p2

    .line 1188
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1189
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2900(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    :cond_9
    move p2, v3

    goto :goto_3

    .line 1191
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, 0x34

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1193
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    .line 1194
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    move-result-object v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-lez v5, :cond_b

    const/16 v5, 0x38

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_4

    :cond_b
    move v5, v3

    :goto_4
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2802(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I

    .line 1195
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v4

    const/4 v5, 0x2

    if-ne p2, v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v4

    if-eq v0, v4, :cond_d

    .line 1196
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1002(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I

    .line 1197
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_d

    .line 1198
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-virtual {v0, v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1202
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-eqz p2, :cond_d

    new-array p2, v5, [F

    .line 1203
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1204
    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$1;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1216
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-eq v0, p2, :cond_e

    new-array v0, v5, [I

    .line 1218
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v4

    aput v4, v0, v3

    aput p2, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1219
    new-instance v3, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1223
    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addAnimation:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-le v2, v0, :cond_f

    .line 1227
    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1228
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addAnimation:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, v2, :cond_10

    .line 1229
    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1232
    :cond_10
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    if-nez v0, :cond_11

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$2;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1244
    iput-boolean v7, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    .line 1248
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3002(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I

    .line 1250
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1253
    :cond_12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 4

    const/4 v0, 0x0

    .line 1296
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addAnimation:Z

    .line 1298
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/4 v1, 0x0

    .line 1299
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 1303
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1305
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animationStarted:Z

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3102(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer$4;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1317
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    .line 1318
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1319
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removingSpan:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
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
