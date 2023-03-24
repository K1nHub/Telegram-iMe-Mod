.class public Lorg/telegram/ui/Components/EmojiTabsStrip;
.super Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;
    }
.end annotation


# static fields
.field private static emojiTabsAnimatedDrawableIds:[I

.field private static emojiTabsDrawableIds:[I


# instance fields
.field public animateAppear:Z

.field private animatedEmojiCacheType:I

.field private appearAnimation:Landroid/animation/ValueAnimator;

.field private appearCount:I

.field private currentType:I

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

.field first:Z

.field private forceTabsShow:Z

.field private includeAnimated:Z

.field private onSettingsOpenRunnable:Ljava/lang/Runnable;

.field private packsIndexStart:I

.field private paddingLeftDp:F

.field private recentDrawableId:I

.field private recentFirstChange:Z

.field private recentIsShown:Z

.field public recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field private removingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectAnimationT:F

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:I

.field private settingsDrawableId:I

.field private settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field private showSelected:Z

.field private showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field public updateButtonDrawables:Z

.field private wasDrawn:Z

.field private wasIndex:I


# direct methods
.method public static synthetic $r8$lambda$1mz48prUCmJa6u586wzC-CxDKV4(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$78d1OT6DjoLrbu3w-6zCeMgYOVQ(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ABSqF2C-Emp90T1jc9v-j3JHUCc(Lorg/telegram/ui/Components/EmojiTabsStrip;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$select$4(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vp0n-TBlcxzsE1N8UgNWW3C3Y2g(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ixsSepB83xSMKJhDie80hb2R1TI(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$0(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 55
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_cat:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_food:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_activities:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_travel:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_objects:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_other:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_flags:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sput-object v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    new-array v0, v0, [I

    .line 65
    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_smiles:I

    aput v1, v0, v3

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_cat:I

    aput v1, v0, v4

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_food:I

    aput v1, v0, v5

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_activities:I

    aput v1, v0, v6

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_travel:I

    aput v1, v0, v7

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_objects:I

    aput v1, v0, v8

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_other:I

    aput v1, v0, v9

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_flags:I

    aput v1, v0, v10

    sput-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsAnimatedDrawableIds:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZILjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 108
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 54
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    .line 75
    sget v0, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    .line 77
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    .line 78
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    const/4 v12, 0x0

    .line 93
    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 94
    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    const/4 v13, 0x0

    .line 95
    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    .line 97
    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    .line 99
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/4 v0, 0x6

    .line 103
    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    .line 105
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    .line 320
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    .line 321
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 502
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    const/high16 v0, 0x41300000    # 11.0f

    .line 760
    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    .line 109
    iput-boolean v8, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    move-object/from16 v0, p2

    .line 110
    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 111
    iput-object v10, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    .line 112
    iput v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;

    invoke-direct {v0, v6, v7, v8}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    .line 281
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 282
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 284
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 285
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    .line 288
    iget-object v14, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v15, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_emoji_stickers:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v15, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x3

    if-ne v9, v0, :cond_1

    .line 291
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    .line 293
    :cond_1
    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v14, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v3, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v14, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, -0x37b9b9a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    if-nez v8, :cond_4

    move v8, v13

    .line 296
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    array-length v1, v0

    if-ge v8, v1, :cond_3

    .line 297
    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v10, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    aget v3, v0, v8

    const/4 v4, 0x0

    if-nez v8, :cond_2

    move v5, v11

    goto :goto_1

    :cond_2
    move v5, v13

    :goto_1
    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 302
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const v1, 0x36337e

    iput v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->id:I

    .line 305
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    if-eqz v10, :cond_6

    .line 307
    iget-object v8, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v3, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, 0x5582bc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    .line 309
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 311
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .line 46
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .line 46
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsAnimatedDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectorColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    return p0
.end method

.method private getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$StickerSet;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)",
            "Lorg/telegram/tgnet/TLRPC$Document;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move v2, v1

    .line 361
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 362
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 363
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 368
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    .line 369
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private isFreeEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$StickerSet;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move p1, v0

    .line 348
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 349
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private synthetic lambda$select$4(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 819
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 820
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 821
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateClickListeners$0(ILandroid/view/View;)V
    .locals 0

    .line 729
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$1(ILandroid/view/View;)Z
    .locals 0

    .line 738
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClickLong(I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$updateClickListeners$2(ILandroid/view/View;)V
    .locals 0

    .line 743
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$3(Landroid/view/View;)V
    .locals 0

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 750
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private selectorColor()I
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "chat_emojiPanelIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x2effffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected allowEmojisForNonPremium()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doIncludeFeatured()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 853
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method protected isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z
    .locals 0

    .line 491
    iget-boolean p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 769
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onTabClick(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onTabClickLong(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    return-void
.end method

.method public select(I)V
    .locals 1

    const/4 v0, 0x1

    .line 779
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 783
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 784
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 787
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 788
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 791
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    move v3, v0

    move v4, v3

    .line 792
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 793
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 795
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v6, :cond_7

    .line 796
    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v6, v0

    move v7, v4

    .line 797
    :goto_2
    iget-object v8, v5, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 798
    iget-object v8, v5, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 799
    instance-of v9, v8, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v9, :cond_5

    .line 800
    check-cast v8, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v7, :cond_4

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v0

    :goto_3
    invoke-virtual {v8, v9, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 804
    :cond_7
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v6, :cond_9

    .line 805
    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v4, :cond_8

    move v6, v1

    goto :goto_4

    :cond_8
    move v6, v0

    :goto_4
    invoke-virtual {v5, v6, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_9
    move v7, v4

    :goto_5
    if-lt p1, v4, :cond_a

    if-gt p1, v7, :cond_a

    .line 808
    iput v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v7, 0x1

    goto :goto_1

    .line 811
    :cond_b
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v2, v3, :cond_12

    .line 812
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c

    .line 813
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 815
    :cond_c
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    int-to-float v3, v3

    const/4 v4, 0x2

    if-eqz p2, :cond_d

    new-array v5, v4, [F

    .line 817
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 818
    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 823
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x15e

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 824
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_d
    const/high16 v5, 0x3f800000    # 1.0f

    .line 827
    iput v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 828
    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 829
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 832
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v2, :cond_10

    .line 833
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v3, v1, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    move v3, v0

    goto :goto_8

    :cond_f
    :goto_7
    move v3, v1

    :goto_8
    invoke-virtual {v2, v3, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->show(ZZ)V

    .line 836
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 837
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-lt v2, v4, :cond_11

    .line 838
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollToVisible(II)Z

    goto :goto_9

    .line 840
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollTo(I)V

    .line 844
    :cond_12
    :goto_9
    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    if-eq p2, p1, :cond_14

    .line 845
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz p2, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne v0, v1, :cond_13

    if-lt p1, v1, :cond_13

    iget-object p2, p2, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    add-int/2addr p2, v1

    if-gt p1, p2, :cond_13

    .line 846
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollToVisible(II)Z

    .line 848
    :cond_13
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    :cond_14
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimatedEmojiCacheType(I)V
    .locals 0

    .line 861
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    .line 763
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    return-void
.end method

.method public showRecent(Z)V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 327
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 328
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_2

    .line 331
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 333
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eqz v2, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne p1, v0, :cond_6

    .line 334
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    .line 336
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 337
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    .line 316
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public updateClickListeners()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 722
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 723
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 724
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v4, :cond_1

    .line 725
    check-cast v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v4, v0

    .line 726
    :goto_1
    iget-object v5, v3, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 728
    iget-object v5, v3, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    .line 736
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v4, :cond_2

    .line 737
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    .line 738
    new-instance v5, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 742
    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_5

    .line 748
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :cond_0
    return-void
.end method

.method public updateEmojiPacks(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 507
    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->areStickersLoaded(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v9, 0x0

    .line 513
    iput-boolean v9, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez v8, :cond_2

    return-void

    .line 517
    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    sub-int/2addr v0, v1

    iget-object v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v9

    :goto_0
    sub-int v10, v0, v1

    if-nez v10, :cond_4

    .line 518
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    .line 520
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 521
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 522
    iput-object v11, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    .line 524
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    .line 525
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->doIncludeFeatured()Z

    .line 526
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->allowEmojisForNonPremium()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v12, v9

    goto :goto_2

    :cond_7
    :goto_1
    move v12, v2

    .line 528
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v9

    .line 530
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v14, v0, :cond_14

    if-ge v14, v10, :cond_8

    .line 533
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    goto :goto_4

    :cond_8
    move-object v0, v11

    .line 536
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_9

    .line 537
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-object v15, v1

    goto :goto_5

    :cond_9
    move-object v15, v11

    :goto_5
    if-nez v15, :cond_b

    if-eqz v0, :cond_a

    .line 542
    iget-object v1, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_a
    move-object v1, v11

    goto/16 :goto_9

    .line 545
    :cond_b
    iget-object v1, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isFreeEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Z

    move-result v16

    if-nez v0, :cond_c

    move-object v1, v11

    goto :goto_6

    .line 546
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    .line 547
    :goto_6
    iget-object v2, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_d

    .line 548
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->equals(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 549
    :cond_d
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v4, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    invoke-direct {v1, v3, v4, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    :cond_e
    move-object v6, v1

    if-nez v0, :cond_f

    .line 552
    new-instance v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v3, v6

    move/from16 v4, v16

    move-object v9, v5

    move/from16 v5, v17

    move-object v11, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 553
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    .line 555
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object v0, v9

    goto :goto_7

    :cond_f
    move-object v11, v6

    .line 556
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v11, :cond_10

    .line 557
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    :cond_10
    :goto_7
    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    const/4 v1, 0x0

    .line 560
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_9

    :cond_11
    if-nez v12, :cond_12

    if-nez v16, :cond_12

    .line 562
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_8

    .line 563
    :cond_12
    invoke-virtual {v7, v15}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 564
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    :goto_8
    const/4 v1, 0x0

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    .line 566
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object v11, v1

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 667
    :cond_14
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_15

    .line 668
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 669
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    .line 670
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_15
    const/4 v0, 0x0

    .line 714
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 715
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->keepAttached:Z

    .line 716
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 718
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    return-void
.end method
