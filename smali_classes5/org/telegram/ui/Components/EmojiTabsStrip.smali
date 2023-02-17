.class public Lorg/telegram/ui/Components/EmojiTabsStrip;
.super Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
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

.field public contentView:Landroid/widget/LinearLayout;

.field private currentType:I

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

.field private emojipackTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;",
            ">;"
        }
    .end annotation
.end field

.field first:Z

.field private forceTabsShow:Z

.field private includeAnimated:Z

.field private onSettingsOpenRunnable:Ljava/lang/Runnable;

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
.method public static synthetic $r8$lambda$5vMYiUEqUNrPyjp6esa49Y9YHIA(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateEmojiPacks$0(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DoJEp3A84IbVtuq6-ZvPkC8ZOvA(Lorg/telegram/ui/Components/EmojiTabsStrip;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$select$6(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Op9WUvpVYajEfGEAW8sWNNpKHSY(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$4(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qg4XWMMh-pH8nFavIWCKP2UcHRc(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$3(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vp0n-TBlcxzsE1N8UgNWW3C3Y2g(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhNUs_a66j0wdNuU3xd5UY8G26w(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$5(Landroid/view/View;)V

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

    .line 109
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

    .line 90
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

    .line 319
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    .line 320
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 384
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    const/high16 v0, 0x41300000    # 11.0f

    .line 596
    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    .line 110
    iput-boolean v8, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    move-object/from16 v0, p2

    .line 111
    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 112
    iput-object v10, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    .line 113
    iput v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    .line 115
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;

    invoke-direct {v0, v6, v7, v8}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    .line 281
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 282
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 284
    invoke-virtual {v6, v13}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 285
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    .line 288
    iget-object v14, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

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
    iget-object v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

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

    const/4 v8, 0x0

    .line 296
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    array-length v1, v0

    if-ge v8, v1, :cond_3

    .line 297
    iget-object v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    new-instance v10, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    aget v3, v0, v8

    const/4 v4, 0x0

    if-nez v8, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

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
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const v1, 0x36337e

    iput v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->id:I

    :cond_5
    if-eqz v10, :cond_6

    .line 306
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

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

    .line 307
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, 0x5582bc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    .line 308
    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 310
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

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .line 46
    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$1900()[I
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
    .locals 9
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

    const/4 v2, 0x0

    .line 359
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 360
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 361
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 366
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    .line 367
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
    const/4 p1, 0x0

    .line 346
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 347
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

.method private synthetic lambda$select$6(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 654
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 655
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateClickListeners$2(ILandroid/view/View;)V
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$3(ILandroid/view/View;)Z
    .locals 0

    .line 574
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClickLong(I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$updateClickListeners$4(ILandroid/view/View;)V
    .locals 0

    .line 579
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$5(Landroid/view/View;)V
    .locals 0

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 586
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateEmojiPacks$0(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 433
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 434
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 435
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 436
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private selectorColor()I
    .locals 2

    .line 692
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

    .line 688
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method protected isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z
    .locals 0

    .line 373
    iget-boolean p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 604
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

    .line 614
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 618
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 619
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 622
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 623
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 626
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 627
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 628
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 630
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v6, :cond_7

    .line 631
    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v7, v4

    const/4 v6, 0x0

    .line 632
    :goto_2
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 633
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 634
    instance-of v9, v8, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v9, :cond_5

    .line 635
    check-cast v8, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v7, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 639
    :cond_7
    instance-of v6, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v6, :cond_9

    .line 640
    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v4, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_9
    move v7, v4

    :goto_5
    if-lt p1, v4, :cond_a

    if-gt p1, v7, :cond_a

    .line 643
    iput v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v7, 0x1

    goto :goto_1

    .line 646
    :cond_b
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v2, v3, :cond_12

    .line 647
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c

    .line 648
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 650
    :cond_c
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    int-to-float v3, v3

    const/4 v4, 0x2

    if-eqz p2, :cond_d

    new-array v5, v4, [F

    .line 652
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 653
    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 658
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x15e

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 660
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_d
    const/high16 v5, 0x3f800000    # 1.0f

    .line 662
    iput v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    .line 663
    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 667
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v2, :cond_10

    .line 668
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v3, v1, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v2, v3, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->show(ZZ)V

    .line 671
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 672
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-lt v2, v4, :cond_11

    .line 673
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollToVisible(II)Z

    goto :goto_9

    .line 675
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollTo(I)V

    .line 679
    :cond_12
    :goto_9
    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    if-eq p2, p1, :cond_14

    .line 680
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz p2, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne v0, v1, :cond_13

    if-lt p1, v1, :cond_13

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    add-int/2addr p2, v1

    if-gt p1, p2, :cond_13

    .line 681
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

    .line 683
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

    .line 696
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    .line 598
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    return-void
.end method

.method public showRecent(Z)V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 325
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    .line 326
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_2

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

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

    .line 331
    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eqz v2, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne p1, v0, :cond_6

    .line 332
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    .line 334
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 335
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public updateClickListeners()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 558
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 560
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v4, :cond_1

    .line 561
    check-cast v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const/4 v4, 0x0

    .line 562
    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 564
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    .line 572
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v4, :cond_2

    .line 573
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    .line 574
    new-instance v5, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 578
    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_5

    .line 584
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :cond_0
    return-void
.end method

.method public updateEmojiPacks(Ljava/util/ArrayList;)V
    .locals 21
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

    .line 388
    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    if-nez v0, :cond_0

    return-void

    .line 391
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

    .line 394
    iput-boolean v9, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez v8, :cond_2

    return-void

    .line 398
    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    .line 401
    :cond_3
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-boolean v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    .line 403
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 404
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 405
    iput-object v10, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    .line 407
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->doIncludeFeatured()Z

    move-result v11

    .line 409
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->allowEmojisForNonPremium()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v13, 0x1

    :goto_1
    const/4 v0, 0x0

    .line 410
    :goto_2
    iget-object v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v14, 0xc8

    const/4 v6, 0x2

    if-ge v0, v1, :cond_c

    .line 411
    iget-object v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v1, :cond_a

    .line 413
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 414
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 415
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-nez v11, :cond_8

    .line 416
    iget-boolean v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v4, :cond_8

    move/from16 v16, v11

    goto :goto_4

    :cond_8
    new-array v4, v6, [Ljava/lang/Object;

    .line 419
    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    move/from16 v16, v11

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    .line 420
    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v16

    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    move/from16 v16, v11

    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_b

    if-eqz v1, :cond_b

    .line 428
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 429
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 430
    iget-object v3, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v6, [F

    .line 431
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    aput v3, v2, v9

    const/4 v3, 0x0

    aput v3, v2, v12

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 432
    new-instance v3, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    new-instance v3, Lorg/telegram/ui/Components/EmojiTabsStrip$2;

    invoke-direct {v3, v7, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 449
    iget-object v2, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    .line 451
    :cond_b
    iget-object v2, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/2addr v0, v12

    move/from16 v11, v16

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    move/from16 v16, v11

    const/4 v10, 0x0

    .line 453
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1b

    .line 454
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-nez v16, :cond_d

    .line 455
    iget-boolean v0, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    const/16 v18, 0x2

    goto/16 :goto_d

    :cond_d
    new-array v0, v6, [Ljava/lang/Object;

    .line 458
    iget-object v1, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    iget-boolean v1, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    const/4 v0, 0x0

    .line 460
    :goto_7
    iget-object v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 461
    iget-object v1, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v1, :cond_e

    .line 462
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    .line 467
    :goto_8
    iget-object v0, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isFreeEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Z

    move-result v17

    if-nez v1, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    .line 468
    :cond_10
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 469
    :goto_9
    iget-object v2, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v11, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_12

    if-eqz v0, :cond_11

    .line 470
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v3

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v18, v3, v14

    if-eqz v18, :cond_12

    .line 471
    :cond_11
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    :cond_12
    move-object v14, v0

    if-nez v1, :cond_14

    .line 474
    new-instance v15, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v14

    move/from16 v4, v17

    move/from16 v20, v5

    move/from16 v5, v18

    const/16 v18, 0x2

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 475
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    if-eqz v14, :cond_13

    .line 477
    invoke-static {v15}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 479
    :cond_13
    invoke-virtual {v7, v15}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    .line 480
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojipackTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v15

    goto :goto_a

    :cond_14
    const/16 v18, 0x2

    .line 481
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, v14, :cond_16

    .line 482
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_15

    .line 483
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 485
    :cond_15
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v14, :cond_16

    .line 487
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 490
    :cond_16
    :goto_a
    iget v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    .line 491
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_c

    :cond_17
    if-nez v13, :cond_18

    if-nez v17, :cond_18

    .line 493
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    goto :goto_b

    .line 494
    :cond_18
    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 495
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    .line 497
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;)V

    .line 502
    :goto_c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a

    .line 503
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 505
    :cond_1a
    iget-object v2, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_d
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x2

    const-wide/16 v14, 0xc8

    goto/16 :goto_6

    .line 507
    :cond_1b
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_1c

    .line 508
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 509
    iget-object v0, v7, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 510
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

    .line 554
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    return-void
.end method
