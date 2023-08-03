.class public Lorg/telegram/ui/Components/EmojiTabsStrip;
.super Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;
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

    .line 62
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

    .line 72
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

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZILjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 115
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 61
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    .line 82
    sget v0, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    .line 84
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    .line 85
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    const/4 v12, 0x0

    .line 100
    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 101
    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    const/4 v13, 0x0

    .line 102
    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    .line 104
    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    .line 106
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/4 v0, 0x6

    .line 110
    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    .line 112
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    .line 345
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    .line 346
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 558
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    const/high16 v0, 0x41300000    # 11.0f

    .line 825
    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    .line 116
    iput-boolean v8, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    move-object/from16 v0, p2

    .line 117
    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 118
    iput-object v10, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    .line 119
    iput v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    .line 121
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;

    invoke-direct {v0, v6, v7, v8}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    .line 293
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 294
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 296
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 297
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    .line 300
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

    .line 303
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    :cond_1
    if-eqz p3, :cond_2

    .line 306
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

    .line 307
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, -0x37b9b9a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    :cond_2
    if-nez v8, :cond_5

    move v0, v13

    .line 310
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 311
    iget-object v2, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    aget v1, v1, v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    move v5, v11

    goto :goto_1

    :cond_3
    move v5, v13

    :goto_1
    move-object/from16 p2, v3

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, v1

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 316
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const v1, 0x36337e

    iput v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->id:I

    .line 319
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    if-eqz v10, :cond_7

    .line 321
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v2, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 p2, v1

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, 0x5582bc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    .line 323
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 325
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .line 47
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .line 47
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsAnimatedDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectorColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    .line 47
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

    .line 386
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 387
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 388
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

    .line 393
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    .line 394
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$select$4(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 884
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 885
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateClickListeners$0(ILandroid/view/View;)V
    .locals 0

    .line 795
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$1(ILandroid/view/View;)Z
    .locals 0

    .line 804
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClickLong(I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$updateClickListeners$2(ILandroid/view/View;)V
    .locals 0

    .line 808
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$3(Landroid/view/View;)V
    .locals 0

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 815
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private selectorColor()I
    .locals 2

    .line 922
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3e3851ec    # 0.18f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

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

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z
    .locals 0

    .line 547
    iget-boolean p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 834
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

    .line 844
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 848
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 849
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 852
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 853
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 856
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    move v3, v0

    move v4, v3

    .line 857
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 858
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 860
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v6, :cond_7

    .line 861
    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v6, v0

    move v7, v4

    .line 862
    :goto_2
    iget-object v8, v5, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 863
    iget-object v8, v5, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 864
    instance-of v9, v8, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v9, :cond_5

    .line 865
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

    .line 869
    :cond_7
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v6, :cond_9

    .line 870
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

    .line 873
    iput v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v7, 0x1

    goto :goto_1

    .line 876
    :cond_b
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v2, v3, :cond_12

    .line 877
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c

    .line 878
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 880
    :cond_c
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    int-to-float v3, v3

    const/4 v4, 0x2

    if-eqz p2, :cond_d

    new-array v5, v4, [F

    .line 882
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 883
    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 888
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x15e

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 889
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 890
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_d
    const/high16 v5, 0x3f800000    # 1.0f

    .line 892
    iput v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 893
    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 894
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 897
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v2, :cond_10

    .line 898
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

    .line 901
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 902
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-lt v2, v4, :cond_11

    .line 903
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollToVisible(II)Z

    goto :goto_9

    .line 905
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollTo(I)V

    .line 909
    :cond_12
    :goto_9
    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    if-eq p2, p1, :cond_14

    .line 910
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

    .line 911
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

    .line 913
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

    .line 926
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    .line 828
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    return-void
.end method

.method public showRecent(Z)V
    .locals 3

    .line 349
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 353
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_2

    .line 356
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

    .line 358
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eqz v2, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne p1, v0, :cond_6

    .line 359
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    .line 361
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 362
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    return-void
.end method

.method public showRecentTabStub(Z)V
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    new-instance p1, Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectorColor()I

    move-result v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 336
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public updateClickListeners()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 788
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 789
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 790
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v4, :cond_1

    .line 791
    check-cast v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v4, v0

    .line 792
    :goto_1
    iget-object v5, v3, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 794
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

    .line 802
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v4, :cond_2

    .line 803
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    .line 804
    new-instance v5, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 807
    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 812
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_5

    .line 813
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :cond_0
    return-void
.end method

.method public updateEmojiPacks(Ljava/util/ArrayList;)V
    .locals 18
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

    .line 563
    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    if-nez v0, :cond_0

    return-void

    .line 566
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

    .line 569
    iput-boolean v9, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez v8, :cond_2

    return-void

    .line 573
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

    .line 574
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    .line 576
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 577
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 578
    iput-object v11, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    .line 580
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    .line 581
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->doIncludeFeatured()Z

    .line 582
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

    .line 584
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v9

    .line 586
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v14, v0, :cond_16

    if-ge v14, v10, :cond_8

    .line 589
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    goto :goto_4

    :cond_8
    move-object v0, v11

    .line 592
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_9

    .line 593
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

    .line 598
    iget-object v1, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_6
    move-object v1, v11

    goto/16 :goto_a

    .line 600
    :cond_b
    iget v1, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    .line 602
    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    .line 603
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    .line 604
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 606
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    .line 608
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 611
    :cond_d
    iget-boolean v6, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v0, :cond_e

    move-object v1, v11

    goto :goto_7

    .line 612
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    .line 613
    :goto_7
    iget-object v2, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v15, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 614
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->equals(J)Z

    move-result v3

    if-nez v3, :cond_10

    .line 615
    :cond_f
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v4, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    invoke-direct {v1, v3, v4, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    :cond_10
    move-object v5, v1

    if-nez v0, :cond_11

    .line 618
    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v9, v4

    move v4, v6

    move-object v11, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 619
    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    .line 621
    iget-object v0, v7, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object v0, v9

    goto :goto_8

    :cond_11
    move-object v11, v5

    move/from16 v16, v6

    .line 622
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v11, :cond_12

    .line 623
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :cond_12
    :goto_8
    iget v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    const/4 v1, 0x0

    .line 626
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_a

    :cond_13
    if-nez v12, :cond_14

    if-nez v16, :cond_14

    .line 628
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_9

    .line 629
    :cond_14
    invoke-virtual {v7, v15}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 630
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    :goto_9
    const/4 v1, 0x0

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object v11, v1

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 733
    :cond_16
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_18

    .line 734
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 735
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 736
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabledOrPreparing()Z

    move-result v1

    if-eqz v1, :cond_17

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_17
    const-wide/16 v1, 0xc8

    :goto_b
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_18
    const/4 v0, 0x0

    .line 780
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 781
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->keepAttached:Z

    .line 782
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 784
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    return-void
.end method
