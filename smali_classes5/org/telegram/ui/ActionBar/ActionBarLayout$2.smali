.class Lorg/telegram/ui/ActionBar/ActionBarLayout$2;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$first:Z

.field final synthetic val$open:Z

.field final synthetic val$preview:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    iput-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$902(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1216
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1002(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    .line 1219
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x28

    cmp-long v0, v4, v6

    const-wide/16 v6, 0x12

    if-lez v0, :cond_2

    .line 1221
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move-wide v4, v6

    .line 1226
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1102(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    .line 1227
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x433e0000    # 190.0f

    goto :goto_1

    :cond_4
    const/high16 v0, 0x43160000    # 150.0f

    .line 1228
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    long-to-float v3, v4

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1216(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1202(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    .line 1232
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1235
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1238
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 1239
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1240
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    const/high16 v4, 0x40000000    # 2.0f

    .line 1241
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v6

    mul-float/2addr v6, v4

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_3

    :cond_a
    move v4, v5

    :goto_3
    sub-float/2addr v6, v4

    invoke-static {v6, v5, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    .line 1242
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    .line 1245
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    if-eqz v0, :cond_d

    .line 1246
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    if-eqz v0, :cond_c

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/OvershootInterpolator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_4

    .line 1249
    :cond_c
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_4

    .line 1252
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1254
    :goto_4
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x42380000    # 46.0f

    const/16 v7, 0x30

    if-eqz v1, :cond_10

    .line 1255
    invoke-static {v0, v5, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 1256
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1257
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    if-eqz v5, :cond_f

    .line 1258
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1259
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1260
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1261
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/16 v7, 0x28

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v2, v0

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1262
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    const/16 v7, 0x46

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1263
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    const v7, 0x3f733333    # 0.95f

    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1264
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1266
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    mul-float/2addr v6, v1

    float-to-int v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1267
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_5

    .line 1271
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v2, v0

    mul-float/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_5

    :cond_10
    sub-float v1, v2, v0

    .line 1274
    invoke-static {v1, v5, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    .line 1275
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1276
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    if-eqz v8, :cond_12

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v0

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    mul-float/2addr v6, v5

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1281
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v5, v4

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1283
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_5

    .line 1286
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1289
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_13

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$preview:Z

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1800(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V

    goto :goto_6

    .line 1292
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1900(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    :goto_6
    return-void
.end method
