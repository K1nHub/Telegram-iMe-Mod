.class public Lorg/telegram/ui/ChatActivity$ThemeDelegate;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.implements Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;
.implements Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeDelegate"
.end annotation


# instance fields
.field private final actionMatrix:Landroid/graphics/Matrix;

.field private animatingColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private cachedThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation
.end field

.field private chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private currentColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field currentServiceColor:I

.field drawSelectedGradient:Z

.field drawServiceGradient:Z

.field private isDark:Z

.field private paint:Landroid/graphics/Paint;

.field private patternAlphaAnimator:Landroid/animation/AnimatorSet;

.field private patternIntensityAnimator:Landroid/animation/ValueAnimator;

.field private serviceBitmap:Landroid/graphics/Bitmap;

.field private serviceBitmapSource:Landroid/graphics/Bitmap;

.field private serviceCanvas:Landroid/graphics/Canvas;

.field private serviceShader:Landroid/graphics/BitmapShader;

.field private serviceShaderSource:Landroid/graphics/BitmapShader;

.field startServiceBitmap:Landroid/graphics/Bitmap;

.field startServiceButtonColor:I

.field startServiceColor:I

.field startServiceIconColor:I

.field startServiceLinkColor:I

.field startServiceTextColor:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private useSourceShader:Z


# direct methods
.method public static synthetic $r8$lambda$JkByfllSVhqYCfPrB_llpJ5tiok(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$TUoo-Hfvp4vJP89ghB8gmDg650Y(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setupChatTheme$4(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0YKJXQbE9H0ZIYTIJ9uluolLRA(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setupChatTheme$5(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_d73tLzyoBOtcRXZtXgCvx23C8k(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bYto0spCp7hAk3IBYfcOVTSRuus(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0K3B9PBU4zvpVsoOsdymQhph1E()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$paFFzkCqCPqOWL8rvDk1lH657hw(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$getBackgroundDrawableFromTheme$7(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbi081wMutXNeGoxCMjI-V3_GJo(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$getBackgroundDrawableFromTheme$6(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 5

    .line 34993
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    .line 34970
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    .line 34971
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    .line 34973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    .line 34980
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    .line 34994
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    .line 34996
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    if-eqz v0, :cond_0

    .line 34997
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$61200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/ChatThemeController;->getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz p1, :cond_0

    .line 35000
    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZ)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 35003
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 35004
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    goto :goto_0

    .line 35006
    :cond_1
    sget-object p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$21200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z
    .locals 0

    .line 34967
    iget-boolean p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    return p0
.end method

.method static synthetic access$45100(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 0

    .line 34967
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object p0
.end method

.method static synthetic access$61400(Lorg/telegram/ui/ChatActivity$ThemeDelegate;F)V
    .locals 0

    .line 34967
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 35562
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v0, :cond_0

    .line 35563
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 35564
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$61900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Ljava/util/HashMap;

    move-result-object v1

    .line 35565
    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperLink(I)Ljava/lang/String;

    move-result-object p1

    .line 35566
    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/util/HashMap;Ljava/lang/String;I)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p1

    .line 35567
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const-string v0, "chat_wallpaper"

    .line 35569
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chat_wallpaper_gradient_to"

    .line 35570
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "key_chat_wallpaper_gradient_to2"

    .line 35571
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "key_chat_wallpaper_gradient_to3"

    .line 35572
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 35574
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 35577
    :cond_1
    new-instance v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 35578
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    .line 35579
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v11

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 35580
    invoke-virtual {v11, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 35581
    invoke-virtual {v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v9

    .line 35582
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    .line 35583
    new-instance v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;I)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    move-object p1, v11

    :goto_0
    return-object p1
.end method

.method private getCurrentColorOrDefault(Ljava/lang/String;Z)I
    .locals 1

    .line 35611
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35613
    invoke-static {p1, v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35615
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private initDrawables()V
    .locals 7

    .line 35318
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawablesMap()Ljava/util/Map;

    move-result-object v0

    .line 35319
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "drawableMsgOut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string v4, "drawableMsgInSelected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "drawableMsgOutMediaSelected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v4, "drawableMsgOutSelected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "drawableMsgOutMedia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "drawableMsgInMediaSelected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "drawableMsgInMedia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "drawableMsgIn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 35347
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 35348
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 35350
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_b

    .line 35355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawableColorKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 35357
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    .line 35359
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 35361
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 35335
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v5, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35326
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v6, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35344
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35338
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35341
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35332
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v6, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35329
    :pswitch_6
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v6, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 35323
    :pswitch_7
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v6, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_b
    :goto_3
    if-eqz v2, :cond_0

    .line 35366
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7adbe978 -> :sswitch_7
        -0x7786c1c4 -> :sswitch_6
        -0x62ba6709 -> :sswitch_5
        -0x56839ba7 -> :sswitch_4
        -0x40a651fa -> :sswitch_3
        -0x7cadec -> :sswitch_2
        0x11e96543 -> :sswitch_1
        0x1f5ed24b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPaints()V
    .locals 5

    .line 35372
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintsMap()Ljava/util/Map;

    move-result-object v0

    .line 35373
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35374
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 35376
    instance-of v3, v2, Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    .line 35377
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 35378
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35379
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 35381
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 35383
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 35384
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 35387
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintColorKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 35389
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 35391
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 35393
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35395
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 35412
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 35413
    aget v0, v0, v1

    const-string v2, "chat_serviceBackground"

    .line 35415
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chat_selectedBackground"

    .line 35416
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v2, :cond_0

    .line 35419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 35421
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 35423
    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 35424
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x3c

    const/16 v5, 0x50

    .line 35427
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 35428
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 35429
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    .line 35430
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35431
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v5, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 35432
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v5, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    .line 35433
    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    goto :goto_0

    .line 35435
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 35436
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    :goto_0
    const-string v1, "paintChatActionBackground"

    .line 35439
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    const-string v5, "paintChatActionBackgroundSelected"

    .line 35440
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    const-string v6, "paintChatMessageBackgroundSelected"

    .line 35441
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    if-eqz v1, :cond_5

    .line 35444
    iget-boolean v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v8, :cond_4

    .line 35445
    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 35446
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result p1

    if-ltz p1, :cond_3

    const p1, 0x3fe66666    # 1.8f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v8, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/16 p1, 0x7f

    .line 35448
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35449
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35450
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35452
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35453
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35454
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 35456
    :cond_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35457
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35458
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35459
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    :goto_2
    if-nez v7, :cond_6

    .line 35464
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 35465
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35467
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    if-eqz p1, :cond_7

    .line 35468
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v0, 0x40200000    # 2.5f

    .line 35469
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 35470
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/16 v0, 0x40

    .line 35471
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35472
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35473
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    .line 35476
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 35478
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35479
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35480
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    return-void
.end method

.method private static synthetic lambda$getBackgroundDrawableFromTheme$6(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 35598
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 35599
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private synthetic lambda$getBackgroundDrawableFromTheme$7(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 5

    if-nez p5, :cond_0

    return-void

    .line 35587
    :cond_0
    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 35588
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/Bitmap;

    .line 35589
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    if-eqz p5, :cond_2

    .line 35590
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 35591
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35593
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 35594
    invoke-virtual {p3, p1, p5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 35595
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 35596
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    .line 35597
    new-instance p2, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35601
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35602
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$new$0()V
    .locals 5

    .line 35006
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 35179
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZ)V

    .line 35180
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$2()V
    .locals 3

    .line 35193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Ljava/util/HashMap;

    .line 35194
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v1, "drawableMsgOut"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35195
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$62000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35196
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v1, "drawableMsgOutMedia"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35197
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$62100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35198
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 35199
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 35200
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 35201
    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$3()V
    .locals 2

    .line 35204
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35205
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 35206
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35207
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private static synthetic lambda$setupChatTheme$4(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 35277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$setupChatTheme$5(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 35292
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZ)V
    .locals 5

    .line 35224
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 35227
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$61600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35228
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$61700(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 35230
    :goto_0
    instance-of v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 35231
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPhase()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 35233
    iget-boolean v4, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_4

    .line 35234
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    :cond_4
    if-nez p1, :cond_c

    .line 35237
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    .line 35238
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 35239
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 35240
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 35241
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_5

    .line 35242
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 35244
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 35247
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p1, p2, :cond_6

    .line 35248
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    .line 35250
    :cond_6
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "themeconfig"

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "lastDayTheme"

    const-string p3, "Blue"

    .line 35251
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35252
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object p3, p2

    :cond_8
    :goto_3
    const-string p2, "lastDarkTheme"

    const-string v0, "Dark Blue"

    .line 35255
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35256
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, p1

    .line 35259
    :cond_a
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p1, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    :cond_b
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 35262
    :goto_5
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    goto/16 :goto_6

    .line 35264
    :cond_c
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 35265
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 35267
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$61800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createColors(II)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    .line 35268
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 35270
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_e

    .line 35271
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_e
    if-eqz p2, :cond_11

    .line 35274
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    const/4 p1, 0x1

    const/4 p2, 0x2

    if-eqz v0, :cond_f

    new-array v1, p2, [F

    .line 35276
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 35277
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35278
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0xc8

    .line 35285
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35286
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array v3, p1, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 35288
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_10

    .line 35289
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v1, 0x0

    .line 35290
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    new-array p2, p2, [F

    .line 35291
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 35292
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35293
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$3;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 35300
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35301
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object p2, p1, v2

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 35303
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_11
    if-eqz p3, :cond_12

    .line 35307
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p1

    .line 35308
    aget p1, p1, v2

    .line 35309
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 35310
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 35311
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 35312
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    :cond_12
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateServiceMessageColor(F)V
    .locals 11

    .line 35485
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "paintChatActionBackground"

    .line 35488
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "paintChatActionBackgroundSelected"

    .line 35489
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "paintChatMessageBackgroundSelected"

    .line 35490
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 35492
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 35493
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const-string v4, "chat_serviceText"

    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result v4

    .line 35494
    :goto_0
    iget-boolean v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const-string v8, "chat_serviceLink"

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v8, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result v7

    .line 35495
    :goto_1
    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v9, :cond_3

    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v8, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result v8

    .line 35496
    :goto_2
    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "chat_serviceIcon"

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result v5

    :goto_3
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-eqz v9, :cond_5

    .line 35498
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    invoke-static {v10, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 35499
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    invoke-static {v10, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 35500
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    invoke-static {v10, v7, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 35501
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    invoke-static {v10, v8, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    .line 35502
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    invoke-static {v10, v5, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    :cond_5
    if-eqz v0, :cond_6

    .line 35504
    iget-boolean v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-nez v10, :cond_6

    .line 35505
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35506
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const-string v3, "paintChatActionText"

    .line 35511
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 35513
    check-cast v10, Landroid/text/TextPaint;

    iput v7, v10, Landroid/text/TextPaint;->linkColor:I

    .line 35514
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v3, "paintChatBotButton"

    .line 35515
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    const-string v3, "drawableMsgStickerCheck"

    .line 35518
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerClock"

    .line 35519
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerHalfCheck"

    .line 35520
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerPinned"

    .line 35521
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerReplies"

    .line 35522
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerViews"

    .line 35523
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableBotInline"

    .line 35525
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableBotLink"

    .line 35526
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawable_botInvite"

    .line 35527
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableCommentSticker"

    .line 35528
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableGoIcon"

    .line 35529
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableReplyIcon"

    .line 35530
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableShareIcon"

    .line 35531
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 35533
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v9, :cond_9

    .line 35534
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    const/4 v4, 0x0

    .line 35535
    iput-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 35536
    invoke-virtual {v3, v8, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35537
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35538
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_8

    .line 35540
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35541
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    if-eqz v2, :cond_b

    .line 35544
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    .line 35547
    :cond_9
    iput-boolean v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 35548
    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_a

    .line 35550
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35551
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    if-eqz v2, :cond_b

    .line 35554
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public applyServiceShaderMatrix(IIFF)V
    .locals 10

    .line 35083
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    if-nez v2, :cond_0

    goto :goto_0

    .line 35086
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    if-eqz v0, :cond_1

    .line 35087
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 35089
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 35084
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    :goto_1
    return-void
.end method

.method public getCachedThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation

    .line 35011
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->cachedThemes:Ljava/util/List;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 35020
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    .line 35021
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35023
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 35024
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return-object v0

    .line 35029
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    const-string v1, "chat_outBubbleGradient"

    .line 35031
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "chat_outBubbleGradient2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "chat_outBubbleGradient3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35032
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    const-string v1, "chat_outBubble"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 35034
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColorOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 35037
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 35041
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getFallbackKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 35043
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_5
    if-nez v0, :cond_6

    .line 35048
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v1, :cond_6

    .line 35049
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public synthetic getColorOrDefault(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 35057
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentColor(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1

    .line 35061
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    .line 35062
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColorOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 35065
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    .line 35066
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    if-nez v0, :cond_2

    .line 35069
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_2
    return-object v0
.end method

.method public getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 1

    .line 35119
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 35106
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 35111
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 35124
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasGradientService()Z
    .locals 1

    .line 35101
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isThemeChangeAvailable()Z
    .locals 5

    .line 35115
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWallpaperMotion()Z
    .locals 1

    .line 35129
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setAnimatedColor(Ljava/lang/String;I)V
    .locals 1

    .line 35076
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 35077
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCachedThemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;)V"
        }
    .end annotation

    .line 35015
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->cachedThemes:Ljava/util/List;

    return-void
.end method

.method public setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V
    .locals 7

    .line 35133
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$61300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 35137
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 35142
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p3

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 35143
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 35144
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 35145
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne v1, p3, :cond_5

    goto/16 :goto_e

    .line 35148
    :cond_5
    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p3, :cond_6

    .line 35150
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    goto :goto_3

    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    .line 35151
    :goto_3
    new-instance v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget v2, p3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    xor-int/lit8 v4, p2, 0x1

    invoke-direct {v1, p3, v2, v3, v4}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    .line 35153
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const-string v2, "chat_serviceIcon"

    const-string v3, "chat_serviceText"

    const-string v4, "chat_serviceLink"

    const/4 v5, -0x1

    if-nez p3, :cond_b

    .line 35154
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 35155
    instance-of v6, p3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput-boolean v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 35156
    invoke-direct {p0, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 35157
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_7

    const/4 p3, -0x1

    goto :goto_4

    :cond_7
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    :goto_4
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 35158
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_8

    const/4 p3, -0x1

    goto :goto_5

    :cond_8
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    :goto_5
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 35159
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_9

    const/4 p3, -0x1

    goto :goto_6

    :cond_9
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    :goto_6
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 35160
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_a

    const/4 p3, -0x1

    goto :goto_7

    :cond_a
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    :goto_7
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    goto :goto_8

    .line 35161
    :cond_b
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_c

    .line 35162
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    .line 35164
    :cond_c
    :goto_8
    iget p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    .line 35165
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v6, 0x1

    if-eqz p3, :cond_d

    const/4 p3, -0x1

    goto :goto_9

    :cond_d
    invoke-direct {p0, v3, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result p3

    :goto_9
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 35166
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_e

    const/4 p3, -0x1

    goto :goto_a

    :cond_e
    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result p3

    :goto_a
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 35167
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_f

    const/4 p3, -0x1

    goto :goto_b

    :cond_f
    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result p3

    :goto_b
    iput p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 35168
    iget-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p3, :cond_10

    goto :goto_c

    :cond_10
    invoke-direct {p0, v2, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColorOrDefault(Ljava/lang/String;Z)I

    move-result v5

    :goto_c
    iput v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    const/4 p3, 0x0

    if-eqz p1, :cond_11

    .line 35171
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v2

    .line 35172
    aget v2, v2, p3

    .line 35173
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 35174
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 35177
    :cond_11
    iput-boolean p3, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    .line 35178
    new-instance p3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V

    iput-object p3, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_12

    .line 35183
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 35192
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    .line 35203
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_d

    .line 35210
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz p1, :cond_13

    .line 35211
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 35214
    :cond_13
    :goto_d
    iput-boolean v6, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    .line 35215
    iput-object p0, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 p1, 0xfa

    .line 35216
    iput-wide p1, v1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    .line 35217
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$61500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    .line 35218
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->onThemeChange:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 35219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_14
    :goto_e
    return-void
.end method
