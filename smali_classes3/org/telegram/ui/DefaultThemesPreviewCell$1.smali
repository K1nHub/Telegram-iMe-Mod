.class Lorg/telegram/ui/DefaultThemesPreviewCell$1;
.super Ljava/lang/Object;
.source "DefaultThemesPreviewCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DefaultThemesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$j4fHVvsW-7PjLKM8ozIUkWvVZUQ(Lorg/telegram/ui/DefaultThemesPreviewCell$1;ILandroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->lambda$onClick$0(ILandroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWTPoNpFyZPjpK3zvBNetz9ColY(Lorg/telegram/ui/DefaultThemesPreviewCell$1;ILandroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->lambda$onClick$1(ILandroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DefaultThemesPreviewCell;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iput-object p2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(ILandroid/content/Context;IZ)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p2

    .line 210
    iget-object v1, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-virtual {v1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    .line 211
    iget-object v1, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$000(Lorg/telegram/ui/DefaultThemesPreviewCell;)V

    const-string v1, "windowBackgroundWhiteBlueText4"

    .line 213
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 214
    iget-object v2, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v2, v2, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 215
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 216
    new-instance v4, Lorg/telegram/ui/DefaultThemesPreviewCell$1$1;

    move/from16 v5, p1

    invoke-direct {v4, p0, v5, v1}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$1;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-instance v4, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x15e

    .line 230
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    const-string v1, "windowBackgroundGray"

    .line 233
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    .line 234
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    if-eqz v12, :cond_4

    .line 236
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$200(Lorg/telegram/ui/DefaultThemesPreviewCell;)I

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_2
    move/from16 v5, p3

    .line 240
    :goto_1
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$102(Lorg/telegram/ui/DefaultThemesPreviewCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    goto :goto_2

    :cond_3
    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v3, 0x43480000    # 200.0f

    :goto_2
    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v2, 0x43af0000    # 350.0f

    .line 242
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/DefaultThemesPreviewCell$1$3;

    move-object v0, v14

    move-object v1, p0

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$3;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;FFFIILandroid/view/Window;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DefaultThemesPreviewCell$1$4;

    invoke-direct {v1, p0, v12, v11}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$4;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;Landroid/view/Window;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->SettingsSwitchToNightMode:I

    const-string v3, "SettingsSwitchToNightMode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v3, v3, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_3

    .line 265
    :cond_5
    iget-object v0, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->SettingsSwitchToDayMode:I

    const-string v3, "SettingsSwitchToDayMode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v3, v3, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :goto_3
    return-void

    nop

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
.end method

.method private synthetic lambda$onClick$1(ILandroid/content/Context;IZ)V
    .locals 7

    .line 209
    new-instance v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;ILandroid/content/Context;IZ)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 170
    sget-boolean p1, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "windowBackgroundWhiteBlueText4"

    .line 173
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string p1, "windowBackgroundGray"

    .line 174
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 p1, 0x1

    .line 175
    sput-boolean p1, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    .line 176
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v3, "Blue"

    .line 177
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v1, v3

    :cond_2
    const-string v5, "lastDarkTheme"

    const-string v7, "Dark Blue"

    .line 181
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object v0, v7

    .line 185
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 187
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "Night"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    move-object v7, v0

    goto :goto_0

    :cond_6
    move-object v7, v0

    :cond_7
    move-object v3, v1

    .line 195
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_8

    .line 196
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_8
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    sub-int/2addr v1, p1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 206
    aget v0, v10, v6

    iget-object v1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v1, v1, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v9

    add-int/2addr v0, v1

    aput v0, v10, v6

    .line 207
    aget v0, v10, p1

    iget-object v1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v1, v1, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v9

    const/4 v11, 0x3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    aput v0, v10, p1

    .line 209
    iget-object v3, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->val$context:Landroid/content/Context;

    new-instance v12, Lorg/telegram/ui/DefaultThemesPreviewCell$1$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;ILandroid/content/Context;IZ)V

    .line 268
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, p1

    aput-object v10, v2, v9

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v11

    const/4 p1, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x5

    iget-object v3, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v3, v3, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x6

    iget-object v3, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v3, v3, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    aput-object v3, v2, p1

    const/4 p1, 0x7

    aput-object v12, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
