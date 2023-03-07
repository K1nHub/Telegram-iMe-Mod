.class public Lorg/telegram/ui/Components/ChatThemeBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;,
        Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

.field private final applyButton:Landroid/view/View;

.field private applyTextView:Landroid/widget/TextView;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private final chatActivity:Lorg/telegram/ui/ChatActivity;

.field private final darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

.field private forceDark:Z

.field hintView:Lorg/telegram/ui/Components/HintView;

.field private isApplyClicked:Z

.field private isLightDarkChangeAnimation:Z

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final originalIsDark:Z

.field private final originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private prevSelectedPosition:I

.field private final progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private resetTextView:Landroid/widget/TextView;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private final scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

.field private selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

.field private final themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$CrudGe16glDunDr-Y2NTUa5ilBY(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$setupLightDarkTheme$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-lnEpjRTxa2AZllw31KfFhBCwY(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$close$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X-Z5ZwR856ffUa9lrmmJ1b6rsHQ(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XyrBkE06oV-wcKoFmkrbmBTtVaM(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$close$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r9tiE3wneuHhQA4AAoZUESH3rVI(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rAQoH_wLNz40Uhz3Wpo1OyPvIl8(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDEYhXFyHZ9wEHHYDMXGUr8hEt0(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ChatActivity$ThemeDelegate;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$1(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, -0x1

    .line 89
    iput v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    move-object/from16 v2, p1

    .line 97
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 98
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    .line 99
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 100
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    .line 101
    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, v1, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    .line 102
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 103
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 104
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 105
    iput-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 109
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    .line 110
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 112
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->titleView:Landroid/widget/TextView;

    .line 113
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 115
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 116
    sget v6, Lorg/telegram/messenger/R$string;->SelectTheme:I

    const-string v7, "SelectTheme"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "dialogTextBlack"

    .line 117
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 118
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v6, "fonts/rmedium.ttf"

    .line 119
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0x15

    .line 120
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v4, v8, v10, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const v12, 0x800033

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "featuredStickers_addButton"

    .line 123
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1c

    .line 124
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    .line 125
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v11, Lorg/telegram/messenger/R$raw;->sun_outline:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    move v13, v14

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 126
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    xor-int/2addr v10, v3

    iput-boolean v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    .line 127
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    invoke-direct {v0, v10, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setForceDark(ZZ)V

    .line 128
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 129
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 130
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v7, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    new-instance v7, Lorg/telegram/ui/Components/ChatThemeBottomSheet$1;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v0, v10}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 143
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 144
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 145
    new-instance v8, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x2c

    const/16 v11, 0x2c

    const v12, 0x800035

    const/4 v13, 0x0

    const/4 v14, -0x2

    const/4 v15, 0x7

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v7, Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 159
    new-instance v7, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 160
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 162
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 163
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 165
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 166
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/16 v2, 0xc

    .line 167
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v7, v8, v5, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 168
    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 212
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v8, 0xe

    .line 213
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 214
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/16 v11, 0x68

    const v12, 0x800003

    const/16 v14, 0x2c

    const/4 v15, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    .line 220
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const-string v8, "featuredStickers_addButtonPressed"

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    new-instance v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    const/16 v8, 0x30

    const v9, 0x800003

    const/16 v10, 0x10

    const/16 v11, 0xa2

    const/16 v12, 0x10

    const/16 v13, 0x10

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 226
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 227
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 230
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 231
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DoNoSetTheme:I

    const-string v5, "DoNoSetTheme"

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->ChatResetTheme:I

    const-string v5, "ChatResetTheme"

    :goto_0
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const-string v2, "featuredStickers_buttonText"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/16 v10, 0x30

    const v11, 0x800003

    const/16 v12, 0x10

    const/16 v13, 0xa2

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    .line 239
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 240
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 242
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 243
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ChatApplyTheme:I

    const-string v8, "ChatApplyTheme"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const v5, 0x800003

    const/16 v6, 0x10

    const/16 v7, 0xa2

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)F
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)F
    .locals 0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onDataLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onAnimationStart()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setItemsAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onAnimationEnd()V

    return-void
.end method

.method private applySelectedTheme()V
    .locals 13

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 614
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eq v4, v0, :cond_6

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 619
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 620
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v0, v6}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLjava/lang/String;Z)V

    if-eqz v1, :cond_2

    .line 621
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez v2, :cond_2

    .line 622
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v6, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 624
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v6, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    .line 626
    :goto_2
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 629
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v2, :cond_6

    .line 631
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v0, "\u274c"

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 635
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v3

    .line 636
    :goto_4
    new-instance v0, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 637
    iget-object v5, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_5

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ThemeAlsoDisabledForHint:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v1, v6, v4

    const-string v1, "ThemeAlsoDisabledForHint"

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 641
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ThemeAlsoAppliedForHint:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v1, v6, v4

    const-string v1, "ThemeAlsoAppliedForHint"

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0xabe

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v3

    .line 647
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    if-eqz v3, :cond_7

    .line 649
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    return-void
.end method

.method private hasChanges()Z
    .locals 4

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 658
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u274c"

    if-eqz v2, :cond_2

    move-object v0, v3

    .line 661
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    .line 662
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 665
    :goto_1
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$close$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySelectedTheme()V

    return-void
.end method

.method private synthetic lambda$close$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setupLightDarkTheme(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Landroid/view/View;I)V
    .locals 6

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v1, 0x0

    .line 173
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    .line 174
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 181
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 182
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 184
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    .line 186
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$3;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$3;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    if-eq p1, p2, :cond_4

    .line 204
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->cancelAnimation()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 207
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p1, :cond_6

    .line 208
    check-cast p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->playEmojiAnimation()V

    :cond_6
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySelectedTheme()V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .locals 3

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private synthetic lambda$setupLightDarkTheme$6(Z)V
    .locals 4

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 465
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setForceDark(ZZ)V

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 467
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    .line 468
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v1, :cond_1

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    .line 474
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 475
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput p1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_2
    return-void
.end method

.method private onAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return-void
.end method

.method private onAnimationStart()V
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    .line 566
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iput v2, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    goto :goto_0

    .line 569
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 570
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setItemsAnimationProgress(F)V

    :cond_1
    return-void
.end method

.method private onDataLoaded(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 502
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 506
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v3

    .line 510
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 513
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 514
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 515
    new-instance v6, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    .line 517
    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    .line 519
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iput v5, v6, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    .line 520
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setItems(Ljava/util/List;)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v3, :cond_5

    const/4 p1, 0x0

    .line 535
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    if-eq p1, v5, :cond_3

    .line 536
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_2
    if-eq p1, v6, :cond_6

    .line 543
    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    .line 544
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    if-lez p1, :cond_4

    .line 545
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 548
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 553
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v1, 0x1

    .line 557
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 558
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v1, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    :goto_5
    return-void
.end method

.method private setForceDark(ZZ)V
    .locals 2

    .line 586
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 589
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 591
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_4

    .line 593
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 597
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 598
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_4

    .line 600
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method private setItemsAnimationProgress(F)V
    .locals 2

    const/4 v0, 0x0

    .line 606
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 607
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput p1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->animationProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 321
    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogTitle:I

    const-string v2, "ChatThemeSaveDialogTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 322
    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogText:I

    const-string v2, "ChatThemeSaveDialogText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 323
    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogApply:I

    const-string v2, "ChatThemeSaveDialogApply"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 324
    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogDiscard:I

    const-string v2, "ChatThemeSaveDialogDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 334
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 312
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 313
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 341
    new-instance v7, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    .line 366
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v11, 0x1

    new-array v6, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    aput-object v1, v6, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "dialogBackground"

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->titleView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "dialogTextBlack"

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    aput-object v4, v3, v12

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "dialogBackgroundGray"

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v17, "featuredStickers_addButton"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v20, v3, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "featuredStickers_addButtonPressed"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 373
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_0

    :cond_0
    return-object v9
.end method

.method public onBackPressed()V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->close()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 485
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 490
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 491
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 492
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return v0

    .line 496
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :cond_3
    :goto_1
    return v0
.end method

.method public onContainerTranslationYChanged(F)V
    .locals 0

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 253
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 254
    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    const/4 v0, 0x0

    .line 255
    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    .line 256
    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    .line 257
    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    .line 258
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 260
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCachedThemes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onDataLoaded(Ljava/util/List;)V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    .line 282
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v1, :cond_2

    .line 283
    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->updateDayNightThemeSwitchHintCount(I)V

    .line 284
    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x4

    .line 285
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setBottomOffset(I)V

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeDayNightSwitchTooltip:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v3, p1, v0

    const-string v0, "ChatThemeDayNightSwitchTooltip"

    invoke-static {v0, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setupLightDarkTheme(Z)V
    .locals 20

    move-object/from16 v13, p0

    move/from16 v14, p1

    .line 380
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 383
    :cond_0
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/FrameLayout;

    .line 385
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 386
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 387
    iget-object v1, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 388
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 389
    invoke-virtual {v15, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 390
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 392
    new-instance v8, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    .line 393
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 396
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 397
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 399
    iget-object v2, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 400
    aget v2, v1, v2

    int-to-float v7, v2

    .line 401
    aget v0, v1, v0

    int-to-float v6, v0

    .line 402
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v5, v7, v0

    .line 403
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v16, v6, v0

    .line 405
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v17, v0, v1

    .line 407
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v9, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 408
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 409
    new-instance v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v18, v15

    move-object v15, v3

    move/from16 v3, p1

    move/from16 v19, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    const/4 v14, 0x2

    move/from16 v11, v16

    const/4 v14, 0x0

    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;ZLandroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v15, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    .line 427
    iput v14, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 428
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    .line 429
    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;

    move/from16 v2, p1

    invoke-direct {v1, v13, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 442
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$8;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$8;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 456
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 457
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 459
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v0, v13, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public show()V
    .locals 3

    .line 923
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DoNoSetTheme:I

    const-string v2, "DoNoSetTheme"

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->ChatResetTheme:I

    const-string v2, "ChatResetTheme"

    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
