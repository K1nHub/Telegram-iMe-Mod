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
.method constructor <init>(Lorg/telegram/ui/DefaultThemesPreviewCell;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iput-object p2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    move-object v6, p0

    .line 170
    sget-boolean v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "windowBackgroundWhiteBlueText4"

    .line 173
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "windowBackgroundGray"

    .line 174
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x1

    .line 175
    sput-boolean v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    .line 176
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "themeconfig"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "lastDayTheme"

    const-string v9, "Blue"

    .line 177
    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move-object v5, v9

    :cond_2
    const-string v10, "lastDarkTheme"

    const-string v11, "Dark Blue"

    .line 181
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move-object v4, v11

    .line 185
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    .line 186
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 187
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "Night"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    move-object v11, v4

    goto :goto_0

    :cond_6
    move-object v11, v4

    :cond_7
    move-object v9, v5

    .line 195
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_8

    .line 196
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    goto :goto_1

    .line 198
    :cond_8
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    .line 201
    :goto_1
    iget-object v9, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v9, v9, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v4, :cond_9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v10

    sub-int/2addr v10, v7

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 203
    iget-object v9, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v9, v9, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 205
    iget-object v11, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v11, v11, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 206
    aget v11, v10, v8

    iget-object v12, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v12, v12, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v9

    add-int/2addr v11, v12

    aput v11, v10, v8

    .line 207
    aget v11, v10, v7

    iget-object v12, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v12, v12, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v9

    const/4 v13, 0x3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v11, v12

    aput v11, v10, v7

    .line 209
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v5, v14, v8

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v14, v7

    aput-object v10, v14, v9

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v13

    const/4 v5, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v14, v5

    const/4 v5, 0x5

    iget-object v8, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v8, v8, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    aput-object v8, v14, v5

    const/4 v5, 0x6

    iget-object v8, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v8, v8, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v14, v5

    invoke-virtual {v11, v12, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 210
    iget-object v5, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-virtual {v5}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    .line 211
    iget-object v5, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v5}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$000(Lorg/telegram/ui/DefaultThemesPreviewCell;)V

    .line 213
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 214
    iget-object v5, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v5, v5, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-array v5, v9, [F

    .line 215
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 216
    new-instance v8, Lorg/telegram/ui/DefaultThemesPreviewCell$1$1;

    invoke-direct {v8, p0, v1, v0}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$1;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;II)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-instance v1, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;I)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v10, 0x15e

    .line 230
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 233
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    .line 234
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->val$context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    move-object v12, v0

    if-eqz v12, :cond_e

    .line 236
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 237
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$200(Lorg/telegram/ui/DefaultThemesPreviewCell;)I

    move-result v0

    move v3, v0

    .line 240
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$102(Lorg/telegram/ui/DefaultThemesPreviewCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_d

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v2, 0x42480000    # 50.0f

    goto :goto_4

    :cond_d
    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v2, 0x43480000    # 200.0f

    .line 242
    :goto_4
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v13, Lorg/telegram/ui/DefaultThemesPreviewCell$1$3;

    move-object v0, v13

    move-object v1, p0

    move v4, v8

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$3;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;FIILandroid/view/Window;)V

    invoke-virtual {v9, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DefaultThemesPreviewCell$1$4;

    invoke-direct {v1, p0, v12, v8}, Lorg/telegram/ui/DefaultThemesPreviewCell$1$4;-><init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;Landroid/view/Window;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$100(Lorg/telegram/ui/DefaultThemesPreviewCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    :cond_e
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->SettingsSwitchToNightMode:I

    const-string v2, "SettingsSwitchToNightMode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v2, v2, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_5

    .line 265
    :cond_f
    iget-object v0, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->dayNightCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->SettingsSwitchToDayMode:I

    const-string v2, "SettingsSwitchToDayMode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v2, v2, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :goto_5
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
.end method
