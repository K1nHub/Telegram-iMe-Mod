.class public Lorg/telegram/ui/ChatActivity$ThemeDelegate;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.implements Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;


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

.field private animatingColors:Landroid/util/SparseIntArray;

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

.field private currentColors:Landroid/util/SparseIntArray;

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

.field private wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


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

.method public static synthetic $r8$lambda$gMiSjQqIrS_Qqr8RrJ7Eo1avCrk(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V

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

    .line 36479
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    .line 36455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    .line 36456
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    .line 36458
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    .line 36466
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    .line 36480
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    .line 36482
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    if-eqz v0, :cond_1

    .line 36483
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$61900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/ChatThemeController;->getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 36484
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$62000(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/ChatThemeController;->getDialogWallpaper(J)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 36485
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 36487
    :cond_0
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 36490
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object p1

    if-nez p1, :cond_2

    .line 36491
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    goto :goto_0

    .line 36493
    :cond_2
    sget-object p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$20600(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z
    .locals 0

    .line 36452
    iget-boolean p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    return p0
.end method

.method static synthetic access$44200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 0

    .line 36452
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p0
.end method

.method static synthetic access$45200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 0

    .line 36452
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object p0
.end method

.method static synthetic access$62200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;F)V
    .locals 0

    .line 36452
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method static synthetic access$63100(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36452
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 37081
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v0, :cond_0

    .line 37082
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 37083
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$62800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 37084
    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperLink(I)Ljava/lang/String;

    move-result-object p1

    .line 37085
    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;I)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p1

    .line 37086
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    .line 37087
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 37089
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v2

    .line 37090
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v3

    .line 37091
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v4

    .line 37092
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v5

    .line 37094
    new-instance v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 37095
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    .line 37096
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 37097
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 37098
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v11

    .line 37099
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    .line 37100
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;

    move-object v6, v1

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;I)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private initDrawables()V
    .locals 7

    .line 36839
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawablesMap()Ljava/util/Map;

    move-result-object v0

    .line 36840
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36842
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
    move v3, v5

    goto :goto_1

    :sswitch_7
    const-string v4, "drawableMsgIn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v3, v6

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 36868
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 36869
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 36871
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_a

    .line 36876
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawableColorKey(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    .line 36878
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 36856
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v5, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36847
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v6, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36865
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36859
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36862
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36853
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v6, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36850
    :pswitch_6
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v6, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 36844
    :pswitch_7
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v6, v6, v6, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_a
    :goto_3
    if-eqz v2, :cond_0

    .line 36883
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
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

    .line 36889
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintsMap()Ljava/util/Map;

    move-result-object v0

    .line 36890
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36891
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 36893
    instance-of v3, v2, Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    .line 36894
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 36895
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36896
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 36898
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 36900
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 36901
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 36904
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintColorKey(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 36906
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36908
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 36925
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 36926
    aget v0, v0, v1

    .line 36928
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(I)I

    move-result v2

    .line 36929
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(I)I

    move-result v4

    if-eqz v2, :cond_1

    .line 36931
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 36934
    :cond_1
    :goto_0
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 36936
    instance-of v0, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 36937
    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 36939
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 36940
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x3c

    const/16 v1, 0x50

    .line 36943
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 36944
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 36945
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    .line 36946
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36947
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 36948
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    .line 36949
    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    goto :goto_2

    .line 36951
    :cond_4
    iput-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 36952
    iput-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 36953
    iput-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 36954
    iput-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    .line 36955
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    :goto_2
    const-string v0, "paintChatActionBackground"

    .line 36958
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "paintChatActionBackgroundSelected"

    .line 36959
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    const-string v6, "paintChatMessageBackgroundSelected"

    .line 36960
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    if-eqz v0, :cond_7

    .line 36963
    iget-boolean v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v8, :cond_6

    .line 36964
    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 36965
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result p1

    if-ltz p1, :cond_5

    const p1, 0x3fe66666    # 1.8f

    goto :goto_3

    :cond_5
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v8, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/16 p1, 0x7f

    .line 36967
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36968
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36969
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36971
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36972
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36973
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    .line 36975
    :cond_6
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36976
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36977
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36978
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    :goto_4
    if-nez v7, :cond_8

    .line 36983
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 36984
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36986
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    if-eqz p1, :cond_9

    .line 36987
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v0, 0x40200000    # 2.5f

    .line 36988
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 36989
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/16 v0, 0x40

    .line 36990
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36991
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36992
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5

    :cond_9
    if-nez v4, :cond_a

    .line 36995
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v4

    .line 36997
    :cond_a
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 36998
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36999
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_5
    return-void
.end method

.method private static synthetic lambda$getBackgroundDrawableFromTheme$6(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 37115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 37116
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private synthetic lambda$getBackgroundDrawableFromTheme$7(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 4

    if-nez p5, :cond_0

    return-void

    .line 37104
    :cond_0
    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 37105
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/Bitmap;

    .line 37106
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 37107
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 37108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37110
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 37111
    invoke-virtual {p3, p1, p5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 37112
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 37113
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    .line 37114
    new-instance p2, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37118
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37119
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

    .line 36493
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

.method private synthetic lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 36668
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V

    .line 36669
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 36671
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBackground()V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$2()V
    .locals 3

    .line 36684
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    .line 36685
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v1, "drawableMsgOut"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36686
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$62900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36687
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v1, "drawableMsgOutMedia"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36688
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$63000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36689
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 36690
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 36691
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 36692
    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$3()V
    .locals 2

    .line 36695
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36696
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 36697
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36698
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private static synthetic lambda$setupChatTheme$4(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 36779
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

    .line 36794
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V
    .locals 11

    .line 36716
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 36717
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 36720
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$62500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36721
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$62600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 36723
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

    .line 36724
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPhase()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz p1, :cond_3

    .line 36726
    iget-boolean v4, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_4

    :cond_3
    if-nez p2, :cond_4

    .line 36727
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    :cond_4
    const-string v4, "lastDarkTheme"

    const-string v5, "lastDayTheme"

    const-string v6, "themeconfig"

    const-string v7, "Dark Blue"

    const-string v8, "Blue"

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 36730
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    .line 36731
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 36732
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 36733
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 36734
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_5

    .line 36735
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 36737
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 36740
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p1, p2, :cond_6

    .line 36741
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    .line 36743
    :cond_6
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 36744
    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36745
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move-object v8, p2

    .line 36748
    :cond_8
    :goto_3
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36749
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
    move-object v7, p1

    .line 36752
    :cond_a
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p1, :cond_b

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 36755
    :goto_5
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    .line 36756
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 36758
    :cond_c
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 36759
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    :cond_d
    if-nez p1, :cond_e

    .line 36762
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    goto :goto_6

    .line 36764
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$62700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v9}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createColors(II)Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    :goto_6
    if-eqz p2, :cond_f

    .line 36767
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {v1, p2, v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->getOrCreate(Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 36769
    :cond_f
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 36772
    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_10

    .line 36773
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_10
    if-eqz p3, :cond_13

    .line 36776
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eqz v0, :cond_11

    new-array v1, p3, [F

    .line 36778
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 36779
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36780
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0xc8

    .line 36787
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36788
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array v3, p2, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 36790
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_12

    .line 36791
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v1, 0x0

    .line 36792
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    new-array p3, p3, [F

    .line 36793
    fill-array-data p3, :array_1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 36794
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36795
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$3;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 36802
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36803
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p3, p2, v2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 36805
    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_13
    if-nez p1, :cond_1a

    .line 36810
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p1, p2, :cond_14

    .line 36811
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_a

    .line 36813
    :cond_14
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 36814
    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36815
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    if-eqz p3, :cond_16

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_8

    :cond_15
    move-object v8, p2

    .line 36818
    :cond_16
    :goto_8
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36819
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_9

    :cond_17
    move-object v7, p1

    .line 36822
    :cond_18
    :goto_9
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p1, :cond_19

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_a

    :cond_19
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 36825
    :goto_a
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    :cond_1a
    if-eqz p4, :cond_1b

    .line 36828
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p1

    .line 36829
    aget p1, p1, v2

    .line 36830
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 36831
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 36832
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36833
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    :cond_1b
    :goto_b
    return-void

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

    .line 37004
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "paintChatActionBackground"

    .line 37007
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "paintChatActionBackgroundSelected"

    .line 37008
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "paintChatMessageBackgroundSelected"

    .line 37009
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 37011
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 37012
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v4

    .line 37013
    :goto_0
    iget-boolean v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, v7, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v7

    .line 37014
    :goto_1
    iget-boolean v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, v8, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v8

    .line 37015
    :goto_2
    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v5

    :goto_3
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-eqz v9, :cond_5

    .line 37017
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    invoke-static {v10, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 37018
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    invoke-static {v10, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 37019
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    invoke-static {v10, v7, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 37020
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    invoke-static {v10, v8, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    .line 37021
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    invoke-static {v10, v5, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    :cond_5
    if-eqz v0, :cond_6

    .line 37023
    iget-boolean v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-nez v10, :cond_6

    .line 37024
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 37025
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const-string v3, "paintChatActionText"

    .line 37030
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 37032
    check-cast v10, Landroid/text/TextPaint;

    iput v7, v10, Landroid/text/TextPaint;->linkColor:I

    .line 37033
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v3, "paintChatBotButton"

    .line 37034
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    const-string v3, "drawableMsgStickerCheck"

    .line 37037
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerClock"

    .line 37038
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerHalfCheck"

    .line 37039
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerPinned"

    .line 37040
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerReplies"

    .line 37041
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableMsgStickerViews"

    .line 37042
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableBotInline"

    .line 37044
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableBotLink"

    .line 37045
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawable_botInvite"

    .line 37046
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableCommentSticker"

    .line 37047
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableGoIcon"

    .line 37048
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableReplyIcon"

    .line 37049
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "drawableShareIcon"

    .line 37050
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 37052
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v9, :cond_9

    .line 37053
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    const/4 v4, 0x0

    .line 37054
    iput-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 37055
    invoke-virtual {v3, v8, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 37056
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37057
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_8

    .line 37059
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 37060
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    if-eqz v2, :cond_b

    .line 37063
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    .line 37066
    :cond_9
    iput-boolean v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 37067
    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_a

    .line 37069
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 37070
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    if-eqz v2, :cond_b

    .line 37073
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public applyServiceShaderMatrix(IIFF)V
    .locals 10

    .line 36565
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    if-nez v2, :cond_0

    goto :goto_0

    .line 36568
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    if-eqz v0, :cond_1

    .line 36569
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 36571
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 36566
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    :goto_1
    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
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

    .line 36498
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->cachedThemes:Ljava/util/List;

    return-object v0
.end method

.method public getColor(I)I
    .locals 2

    .line 36507
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 36508
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 36510
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 36513
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_1

    .line 36514
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 36516
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 36518
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 36521
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getFallbackKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 36523
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 36525
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 36528
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 36533
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(IZ)I
    .locals 1

    .line 36537
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 36538
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_1

    .line 36541
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_1

    .line 36542
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_1

    .line 36544
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 36547
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_2

    .line 36548
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_2

    .line 36550
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 36553
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 1

    .line 36601
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object v0
.end method

.method public getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 1

    .line 37128
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 36588
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

    .line 36593
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Paint;

    :goto_1
    return-object p1
.end method

.method public getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 36606
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

    .line 36583
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

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
    .locals 4

    .line 36597
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWallpaperMotion()Z
    .locals 1

    .line 36611
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

.method public setAnimatedColor(II)V
    .locals 1

    .line 36558
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 36559
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

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

    .line 36502
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->cachedThemes:Ljava/util/List;

    return-void
.end method

.method public setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 36615
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;Z)V

    return-void
.end method

.method public setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;Z)V
    .locals 4

    .line 36618
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$62100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 36622
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 36627
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    :cond_2
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 36628
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 36629
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 36630
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez p5, :cond_6

    .line 36631
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_6

    iget-boolean p5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p5, p4, :cond_6

    invoke-static {p2, v3}, Lorg/telegram/messenger/ChatThemeController;->equals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result p5

    if-eqz p5, :cond_6

    :cond_5
    return-void

    .line 36635
    :cond_6
    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p4, :cond_7

    .line 36637
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p4

    goto :goto_3

    :cond_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p4

    .line 36638
    :goto_3
    new-instance p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget v1, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    xor-int/lit8 v3, p3, 0x1

    invoke-direct {p5, p4, v1, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    .line 36640
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, -0x1

    if-nez p4, :cond_c

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez p4, :cond_c

    .line 36641
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 36642
    instance-of v2, p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 36643
    invoke-direct {p0, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 36644
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_8

    move p4, v1

    goto :goto_4

    :cond_8
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_4
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 36645
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_9

    move p4, v1

    goto :goto_5

    :cond_9
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_5
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 36646
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_a

    move p4, v1

    goto :goto_6

    :cond_a
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_6
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 36647
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_b

    move p4, v1

    goto :goto_7

    :cond_b
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_7
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    goto :goto_8

    .line 36648
    :cond_c
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_d

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_d

    .line 36649
    check-cast p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 36650
    :cond_d
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_e

    .line 36651
    invoke-direct {p0, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 36653
    :cond_e
    :goto_8
    iget p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    .line 36654
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v2, 0x1

    if-eqz p4, :cond_f

    move p4, v1

    goto :goto_9

    :cond_f
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p4, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_9
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 36655
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_10

    move p4, v1

    goto :goto_a

    :cond_10
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, p4, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_a
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 36656
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_11

    move p4, v1

    goto :goto_b

    :cond_11
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, p4, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_b
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 36657
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_12

    goto :goto_c

    :cond_12
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-virtual {p0, p4, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v1

    :goto_c
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    const/4 p4, 0x0

    if-nez p1, :cond_13

    if-eqz p2, :cond_14

    .line 36660
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v1

    .line 36661
    aget v1, v1, p4

    .line 36662
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 36663
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 36666
    :cond_14
    iput-boolean p4, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    .line 36667
    new-instance p4, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V

    iput-object p4, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_15

    .line 36674
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 36683
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    .line 36694
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_d

    .line 36701
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz p2, :cond_16

    .line 36702
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$62300(Lorg/telegram/ui/ChatActivity;)V

    .line 36704
    :cond_16
    iget-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36706
    :goto_d
    iput-boolean v2, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    .line 36707
    iput-object p0, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 p1, 0xfa

    .line 36708
    iput-wide p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    .line 36709
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$62400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, p5, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    .line 36710
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->onThemeChange:Ljava/lang/Runnable;

    if-eqz p1, :cond_17

    .line 36711
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method
