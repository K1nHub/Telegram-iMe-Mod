.class public Lorg/telegram/ui/Cells/DrawerProfileCell;
.super Landroid/widget/FrameLayout;
.source "DrawerProfileCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;
    }
.end annotation


# static fields
.field private static sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public static switchingTheme:Z


# instance fields
.field private accountsShown:Z

.field private animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

.field private archiveButton:Landroid/widget/ImageView;

.field private arrowView:Landroid/widget/ImageView;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentColor:Ljava/lang/Integer;

.field private currentMoonColor:Ljava/lang/Integer;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

.field private destRect:Landroid/graphics/Rect;

.field public drawPremium:Z

.field public drawPremiumProgress:F

.field private editButton:Landroid/widget/ImageView;

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private lastAccount:I

.field private lastSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

.field private lastUser:Lorg/telegram/tgnet/TLRPC$User;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private paint:Landroid/graphics/Paint;

.field private phoneTextView:Landroid/widget/TextView;

.field private premiumStar:Landroid/graphics/drawable/Drawable;

.field private final previewMode:Z

.field private shadowView:Landroid/widget/ImageView;

.field private snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private srcRect:Landroid/graphics/Rect;

.field starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private switchThemeForDebug:Z

.field private updateRightDrawable:Z


# direct methods
.method public static synthetic $r8$lambda$A8DeTIQiL7bPMhzIkY_zewitFnY(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->lambda$new$1(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxGcZdp6WFD1X_CouT2BAvEslLk(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->lambda$new$3(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yTWCgVuw_lORuA3AY_u9daaH0pI(Lorg/telegram/ui/Cells/DrawerProfileCell;ZLorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->lambda$new$2(ZLorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zGS61uQ25aZHH1oNQqiamfqUZt0(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 245
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 222
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateRightDrawable:Z

    .line 226
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    .line 227
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    .line 228
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    .line 229
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, -0x1

    .line 835
    iput v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    const/4 v6, 0x0

    .line 836
    iput-object v6, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 837
    iput-object v6, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 246
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    .line 248
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v8, 0x4

    .line 249
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 251
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->bottom_shadow:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/16 v9, 0x46

    const/16 v10, 0x53

    invoke-static {v5, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 255
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 256
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x40

    const/16 v10, 0x40

    const/16 v11, 0x53

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x43

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v5, Lorg/telegram/ui/Cells/DrawerProfileCell$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell$1;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 301
    new-instance v7, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 307
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 308
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0x13

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 310
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 311
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 312
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x53

    const/16 v13, 0x10

    const/16 v15, 0x6f

    const/16 v16, 0x1c

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    .line 315
    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 317
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 318
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 319
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v16, 0x9

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    .line 323
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 324
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 325
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_expand:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    const/16 v7, 0x3b

    const/16 v10, 0x55

    invoke-static {v7, v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setArrowState(Z)V

    .line 330
    sget-object v5, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v9

    :goto_0
    if-eqz v5, :cond_2

    .line 331
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v11, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v10, 0x1c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    sput-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 332
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 333
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 335
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 337
    :cond_1
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v10, 0x23

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 338
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v10, 0x24

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 341
    :cond_2
    :goto_1
    new-instance v7, Lorg/telegram/ui/Cells/DrawerProfileCell$2;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell$2;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 352
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 353
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v10, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 355
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    .line 356
    sget-object v10, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v11, "Sunny.**"

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 357
    sget-object v10, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v11, "Path 6.**"

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 358
    sget-object v10, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v11, "Path.**"

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 359
    sget-object v10, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v11, "Path 5.**"

    invoke-virtual {v10, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 360
    sget-object v7, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 361
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 362
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v10, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 363
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_3

    .line 364
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    const/16 v11, 0x11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v10, v4, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v4, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_3
    if-nez v5, :cond_4

    .line 367
    sget-object v4, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v4

    sget-object v5, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 368
    iget-object v4, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 370
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v5, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v3, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;ZLorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v4, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v5, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 424
    iget-object v2, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x55

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x5a

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getEventType()I

    move-result v2

    if-nez v2, :cond_5

    .line 427
    new-instance v2, Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 428
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/SnowflakesEffect;->setColorKey(I)V

    .line 431
    :cond_5
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-direct {v2, v0, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 432
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    new-instance v2, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    const/16 v5, 0x3c

    invoke-direct {v2, v1, v4, v5}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;-><init>(Landroid/content/Context;II)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    const/16 v5, 0x33

    .line 434
    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->createEditButton(Landroid/content/Context;)V

    .line 437
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->createArchiveButton(Landroid/content/Context;)V

    if-eqz v3, :cond_6

    .line 439
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 440
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 441
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DrawerProfileCell;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateRightDrawable:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/DrawerProfileCell;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateRightDrawable:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    return-object p0
.end method

.method private applySettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V
    .locals 21

    move-object/from16 v0, p0

    .line 132
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getTitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    :goto_0
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getSubtitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    :goto_1
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result v3

    goto :goto_2

    :cond_3
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    :goto_2
    if-eqz p1, :cond_4

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowSubtitle()Z

    move-result v4

    goto :goto_3

    :cond_4
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    :goto_3
    if-eqz p1, :cond_5

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowAvatar()Z

    move-result v5

    goto :goto_4

    :cond_5
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    :goto_4
    if-eqz p1, :cond_6

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowArchive()Z

    move-result v6

    goto :goto_5

    :cond_6
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 141
    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, -0x1000000

    if-eqz v5, :cond_7

    .line 144
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    .line 146
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    .line 149
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    iget-object v11, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    :goto_7
    const/4 v14, 0x2

    if-ge v13, v14, :cond_17

    if-nez v13, :cond_8

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_9

    move/from16 v16, v3

    goto :goto_9

    :cond_9
    move/from16 v16, v4

    :goto_9
    if-eqz v15, :cond_a

    .line 154
    iget-object v9, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    goto :goto_a

    :cond_a
    iget-object v9, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    .line 155
    :goto_a
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v16, :cond_11

    if-eqz v15, :cond_b

    move-object v8, v1

    goto :goto_b

    :cond_b
    move-object v8, v2

    .line 159
    :goto_b
    sget-object v12, Lcom/iMe/ui/drawer/DrawerAccountData;->PHONE:Lcom/iMe/ui/drawer/DrawerAccountData;

    if-ne v8, v12, :cond_c

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v8, v11

    goto :goto_d

    .line 161
    :cond_c
    sget-object v12, Lcom/iMe/ui/drawer/DrawerAccountData;->USERNAME:Lcom/iMe/ui/drawer/DrawerAccountData;

    if-ne v8, v12, :cond_e

    .line 162
    iget-object v8, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 163
    sget v8, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_username:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    .line 165
    :cond_d
    sget v8, Lorg/telegram/messenger/R$string;->common_username:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v14, v12, v18

    invoke-static {v8, v12}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_c
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_d

    .line 167
    :cond_e
    sget-object v12, Lcom/iMe/ui/drawer/DrawerAccountData;->NAME:Lcom/iMe/ui/drawer/DrawerAccountData;

    if-ne v8, v12, :cond_f

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v8, v5

    goto :goto_d

    .line 169
    :cond_f
    sget-object v12, Lcom/iMe/ui/drawer/DrawerAccountData;->USER_ID:Lcom/iMe/ui/drawer/DrawerAccountData;

    if-ne v8, v12, :cond_10

    .line 170
    sget v8, Lorg/telegram/messenger/R$string;->common_id:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v12, v2

    invoke-static {v8, v12}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_10
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const/4 v8, 0x0

    :goto_d
    const/4 v1, -0x1

    .line 172
    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 173
    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    move-object v12, v8

    const v2, 0x3e99999a    # 0.3f

    const/high16 v8, -0x1000000

    goto :goto_10

    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move v1, v8

    int-to-float v2, v7

    if-eqz v15, :cond_12

    const/high16 v8, 0x3fc00000    # 1.5f

    goto :goto_e

    :cond_12
    const/high16 v8, 0x40000000    # 2.0f

    :goto_e
    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 178
    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v15, :cond_13

    const/16 v2, 0xe

    goto :goto_f

    :cond_13
    const/16 v2, 0xc

    .line 179
    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0xa

    .line 180
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v8, -0x1000000

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x3e99999a    # 0.3f

    .line 181
    invoke-virtual {v9, v2}, Landroid/view/View;->setAlpha(F)V

    const-string v12, ""

    :goto_10
    if-eqz v15, :cond_16

    .line 184
    iget-object v14, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v16, :cond_14

    const/4 v15, 0x0

    goto :goto_11

    :cond_14
    const/16 v15, 0x20

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    :goto_11
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {v14, v15, v1, v8, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v16, :cond_15

    move v2, v8

    goto :goto_12

    :cond_15
    const/16 v2, 0x40

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    move/from16 v2, v18

    :goto_12
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMinWidth(I)V

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_13

    :cond_16
    const/4 v8, 0x0

    .line 188
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_13
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, -0x1000000

    goto/16 :goto_7

    :cond_17
    const/4 v8, 0x0

    .line 192
    iget-object v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_18

    move v12, v8

    goto :goto_14

    :cond_18
    const/16 v12, 0x8

    :goto_14
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private createArchiveButton(Landroid/content/Context;)V
    .locals 7

    .line 204
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    .line 205
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    const/16 v0, 0x30

    const/16 v1, 0x30

    const v2, 0x800055

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/16 v6, 0x5a

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createEditButton(Landroid/content/Context;)V
    .locals 7

    .line 196
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    .line 197
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    const/16 v0, 0x3b

    const/16 v1, 0x3b

    const v2, 0x800055

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->onPremiumClick()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 2

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 413
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$new$2(ZLorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    return-void

    .line 376
    :cond_0
    sget-boolean p1, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 379
    sput-boolean p1, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    .line 380
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "themeconfig"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "lastDayTheme"

    const-string v1, "Blue"

    .line 381
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 382
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object p3, v1

    :cond_3
    const-string v2, "lastDarkTheme"

    const-string v3, "Dark Blue"

    .line 385
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object p1, v3

    .line 389
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 390
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 391
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Night"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    move-object v3, p1

    goto :goto_0

    :cond_7
    move-object v3, p1

    :cond_8
    move-object v1, p3

    .line 399
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 400
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    .line 401
    sget-object v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_1

    .line 403
    :cond_9
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    .line 404
    sget-object v1, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 406
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 407
    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    if-eqz p2, :cond_b

    .line 410
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    .line 411
    :goto_2
    new-instance p3, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda3;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->turnOffAutoNight(Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;)Z
    .locals 1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 419
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method private setArrowState(Z)V
    .locals 2

    .line 939
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 943
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 944
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 946
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrHideAccounts:I

    const-string v1, "AccDescrHideAccounts"

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrShowAccounts:I

    const-string v1, "AccDescrShowAccounts"

    :goto_2
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private switchTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 623
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 624
    aget v3, v1, v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v3, 0x1

    .line 625
    aget v4, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 627
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchThemeForDebug:Z

    if-eqz v4, :cond_0

    .line 628
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v0

    aput v4, v1, v2

    .line 629
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    aput v4, v1, v3

    .line 630
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchThemeForDebug:Z

    .line 633
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v6, v3

    aput-object v1, v6, v0

    const/4 p1, 0x3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, p1

    const/4 p1, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x5

    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object p2, v6, p1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateStateChange(J)V
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animateChange(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const/4 p1, 0x1

    .line 608
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateRightDrawable:Z

    return-void
.end method

.method public applyBackground(Z)Ljava/lang/Integer;
    .locals 3

    .line 917
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 918
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackgroundCats:I

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_2

    .line 920
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 921
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 923
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 951
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 953
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 954
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_0

    .line 955
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 956
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_0

    .line 957
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_4

    .line 958
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 959
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_PHONE:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    .line 962
    :cond_3
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getArchiveButton()Landroid/widget/ImageView;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmojiStatusDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 1

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object v0
.end method

.method public getEmojiStatusDrawableParent()Landroid/view/View;
    .locals 1

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getEmojiStatusLocation(Landroid/graphics/Rect;)V
    .locals 4

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->translate(FF)V

    return-void
.end method

.method public hasAvatar()Z
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    return v0
.end method

.method public isInArchive(FF)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInAvatar(FF)Z
    .locals 1

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInEdit(FF)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 638
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 640
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateColors()V

    .line 641
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 643
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 649
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 651
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 653
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    if-ltz v0, :cond_1

    .line 656
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 657
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, -0x1

    .line 658
    iput v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    .line 661
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 663
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 664
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 701
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 702
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->applyBackground(Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 703
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopBackground:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isPatternWallpaper()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 707
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopShadowCats:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 708
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    move v5, v4

    goto :goto_2

    .line 711
    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuTopShadow:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 712
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 714
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v3

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    :goto_1
    move v5, v1

    .line 717
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 718
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    .line 719
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 721
    :cond_4
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 722
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_6

    .line 723
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    .line 725
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->archiveButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 726
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->editButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 727
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->arrowView:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 729
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 730
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "Sunny.**"

    invoke-virtual {v6, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 731
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "Path 6.**"

    invoke-virtual {v6, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 732
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "Path.**"

    invoke-virtual {v6, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 733
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentMoonColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "Path 5.**"

    invoke-virtual {v6, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 734
    sget-object v6, Lorg/telegram/ui/Cells/DrawerProfileCell;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 736
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    if-eqz v2, :cond_a

    .line 738
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhone:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 739
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    :cond_7
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_9

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_8

    goto :goto_4

    .line 746
    :cond_8
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_d

    .line 747
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 749
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 750
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 752
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v2, v5

    .line 753
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 754
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 755
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    add-int/2addr v3, v5

    add-int/2addr v2, v6

    invoke-virtual {v7, v5, v6, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v1, v1, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 758
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 760
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 762
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    goto :goto_6

    .line 743
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 744
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x4

    .line 766
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 771
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    .line 786
    :cond_d
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremium:Z

    const v1, 0x3d94f209

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    iget v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_e

    add-float/2addr v5, v1

    .line 787
    iput v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    goto :goto_7

    :cond_e
    if-nez v0, :cond_f

    .line 788
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_f

    sub-float/2addr v0, v1

    .line 789
    iput v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    .line 791
    :cond_f
    :goto_7
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_12

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v0, :cond_10

    .line 794
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet1:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet2:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet3:I

    const/4 v6, -0x1

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 795
    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const v1, 0x3f8ccccd    # 1.1f

    .line 796
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 797
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const v1, -0x41b33333    # -0.2f

    .line 798
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 799
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    .line 801
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 803
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-eqz v0, :cond_11

    .line 805
    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremiumProgress:F

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;F)V

    .line 807
    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 810
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz v0, :cond_13

    .line 811
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 685
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 686
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremium:Z

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-nez p1, :cond_0

    .line 688
    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    .line 689
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const p2, 0x3f4ccccd    # 0.8f

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const-wide/16 p2, 0xbb8

    .line 691
    iput-wide p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    .line 693
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 695
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 671
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x94

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x15

    if-lt p2, v2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    if-nez p2, :cond_0

    .line 672
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 675
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 677
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 678
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onPremiumClick()V
    .locals 0

    return-void
.end method

.method public setAccountsShown(ZZ)V
    .locals 1

    .line 828
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 831
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    .line 832
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setArrowState(Z)V

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;ZLcom/iMe/fork/models/DrawerHeaderSettings;)V

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;ZLcom/iMe/fork/models/DrawerHeaderSettings;)V
    .locals 7

    .line 840
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 844
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    .line 847
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 848
    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    if-eq v0, v1, :cond_3

    if-ltz v1, :cond_2

    .line 850
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 851
    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 853
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 854
    iput v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 856
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    return-void

    .line 861
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_5

    .line 862
    invoke-virtual {p3}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result v1

    goto :goto_0

    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    .line 863
    :goto_0
    invoke-static {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v3

    .line 864
    :goto_1
    invoke-static {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    move v0, v3

    .line 866
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->accountsShown:Z

    .line 867
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setArrowState(Z)V

    .line 868
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 870
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v5, 0x16

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {p2, v1, v5, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :catch_0
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->drawPremium:Z

    .line 874
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 875
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x4

    const-wide/16 v5, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    .line 878
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    if-eqz v0, :cond_8

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 881
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 882
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    xor-int/2addr p2, v4

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto/16 :goto_6

    :cond_9
    if-nez v2, :cond_a

    if-eqz v0, :cond_d

    .line 884
    :cond_a
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p2, :cond_d

    .line 886
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    if-eqz p2, :cond_b

    .line 887
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 889
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 890
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 891
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_c

    .line 892
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 894
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 895
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    xor-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_6

    .line 897
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animateChange(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 899
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    .line 900
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 902
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 903
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->previewMode:Z

    xor-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 905
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    goto :goto_7

    :cond_f
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    :goto_7
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->setColor(I)V

    .line 906
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    goto :goto_8

    :cond_10
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    :goto_8
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 907
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 909
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundInProfileBlue:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 911
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/DrawerProfileCell;->applyBackground(Z)Ljava/lang/Integer;

    .line 912
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateRightDrawable:Z

    .line 913
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->applySettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SnowflakesEffect;->updateColors()V

    .line 930
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->animatedStatus:Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    if-eqz v0, :cond_2

    .line 931
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->setColor(I)V

    .line 933
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 934
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    goto :goto_1

    :cond_3
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuPhoneCats:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method
