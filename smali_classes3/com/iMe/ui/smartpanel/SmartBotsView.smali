.class public final Lcom/iMe/ui/smartpanel/SmartBotsView;
.super Landroid/widget/FrameLayout;
.source "SmartBotsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartBotsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartBotsView.kt\ncom/iMe/ui/smartpanel/SmartBotsView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1855#2,2:312\n1864#2,3:314\n1864#2,3:317\n350#2,7:320\n1855#2,2:327\n1855#2,2:329\n*S KotlinDebug\n*F\n+ 1 SmartBotsView.kt\ncom/iMe/ui/smartpanel/SmartBotsView\n*L\n94#1:312,2\n136#1:314,3\n149#1:317,3\n161#1:320,7\n242#1:327,2\n248#1:329,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartBotTab;",
            ">;"
        }
    .end annotation
.end field

.field private final contentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/view/SmartBotContentView;",
            ">;"
        }
    .end annotation
.end field

.field private final currentAccount:I

.field private currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

.field private final mapper:Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;

.field private final pagerAdapter:Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;

.field private panelHeight:I


# direct methods
.method public static synthetic $r8$lambda$NHyOwvx0ePLgCObP4ONTjfuAijs(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setupLayoutBottom$lambda$14$lambda$11(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrbaGS_4_Evqoxmpo0SanSdRFZY(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setupLayoutBottom$lambda$14$lambda$13(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHHxLNpVbphQLeNXWzvkXx851PY(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setupLayoutBottom$lambda$14$lambda$9(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJ3V6ZNiwOE-72YPDafOljTtmuY(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setupLayoutBottom$lambda$14$lambda$12(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iX3ubTyqjUJgmaglOELqYQ_8jFw(Lcom/iMe/ui/smartpanel/SmartBotsView;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->firePageSelectedEvent$lambda$15(Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDBWPfmx8sGMnh1oFnt3eWYQAd8(Landroid/view/View;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateTabListeners$lambda$7(Landroid/view/View;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentAccount:I

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    .line 41
    new-instance p1, Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;

    invoke-direct {p1}, Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->mapper:Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;

    .line 42
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->contentViews:Ljava/util/List;

    .line 46
    sget-object p1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 49
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    .line 50
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/iMe/ui/smartpanel/SmartBotsView$1$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$1$1;-><init>(Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 62
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 63
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance p1, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;

    invoke-direct {p1, p0, p3, p4}, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;-><init>(Lcom/iMe/ui/smartpanel/SmartBotsView;J)V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->pagerAdapter:Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;

    return-void
.end method

.method public static final synthetic access$getContent$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getContentViews$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->contentViews:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentBotResponseType$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    return-object p0
.end method

.method public static final synthetic access$updateBaseIcons(Lcom/iMe/ui/smartpanel/SmartBotsView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateBaseIcons()V

    return-void
.end method

.method public static final synthetic access$updateIndicator(Lcom/iMe/ui/smartpanel/SmartBotsView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateIndicator()V

    return-void
.end method

.method private final firePageSelectedEvent()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final firePageSelectedEvent$lambda$15(Lcom/iMe/ui/smartpanel/SmartBotsView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateBaseIcons()V

    .line 273
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateIndicator()V

    return-void
.end method

.method private final moveToInitialPosition()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private final setTabMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 219
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method private final setupLayoutBottom()V
    .locals 10

    .line 224
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    .line 225
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->layoutBottom:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_bots_responses:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v1, v3, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorVectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 227
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiVectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 228
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v1, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiVectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 229
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-static {v1, v3, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 231
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 232
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 233
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 235
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 236
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageBots:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 237
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageSettings:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageBots:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageSettings:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    sget-object v4, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-ne v3, v4, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 257
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    sget-object v4, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-ne v3, v4, :cond_1

    move v5, v7

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 259
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 260
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 261
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->divider1:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 262
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->divider2:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static final setupLayoutBottom$lambda$14$lambda$11(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_with"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 246
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 247
    sget-object p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    iput-object p0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 248
    iget-object p0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->contentViews:Ljava/util/List;

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    .line 248
    iget-object v0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-virtual {p2, v0}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->setBotResponseType(Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final setupLayoutBottom$lambda$14$lambda$12(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;->onShopClick()V

    :cond_0
    return-void
.end method

.method private static final setupLayoutBottom$lambda$14$lambda$13(Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;->onBotsSettingsClick()V

    :cond_0
    return-void
.end method

.method private static final setupLayoutBottom$lambda$14$lambda$9(Lorg/telegram/messenger/databinding/ForkPanelViewBinding;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_with"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageTextResponses:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 240
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->imageGifResponses:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 241
    sget-object p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    iput-object p0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 242
    iget-object p0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->contentViews:Ljava/util/List;

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    .line 242
    iget-object v0, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-virtual {p2, v0}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->setBotResponseType(Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateBaseIcons()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 352
    check-cast v2, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 161
    invoke-virtual {v2}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getBotId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "recent"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_3

    .line 164
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 166
    iget-object v2, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_bots_recent:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "getThemedDrawable(contex\u2026_chats_actionBackground))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "#33cccccc"

    .line 168
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_bots_recent:I

    const-string v4, "#A8A8A8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "getThemedDrawable(contex\u2026or.parseColor(\"#A8A8A8\"))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :goto_2
    iget-object v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v3, Lorg/telegram/messenger/R$id;->avatar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private final updateIcons()V
    .locals 14

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    .line 1865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$layout;->fork_panel_custom_tab_header:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 138
    sget v6, Lorg/telegram/messenger/R$id;->avatar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v3}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getIconRes()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getIconRes()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 141
    :cond_1
    invoke-virtual {v3}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_3

    const-string v6, "avatar"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v3, "context"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    goto :goto_2

    .line 142
    :cond_3
    sget v3, Lorg/telegram/messenger/R$drawable;->bot_avatar_any:I

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_2
    iget-object v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_3
    move v2, v4

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final updateIndicator()V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    .line 1865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 150
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 151
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v6, 0x1

    .line 152
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 153
    iget-object v6, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v6, v6, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v2, v6, :cond_1

    invoke-virtual {v3}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getBotId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "recent"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    .line 154
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lorg/telegram/messenger/R$id;->avatar_bg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    move v2, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final updateTabListeners()V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 181
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    .line 184
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, p0}, Lcom/iMe/ui/smartpanel/SmartBotsView$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;Lcom/iMe/ui/smartpanel/SmartBotsView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final updateTabListeners$lambda$7(Landroid/view/View;Lcom/iMe/ui/smartpanel/SmartBotsView;Landroid/view/View;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 186
    iget-object p2, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 187
    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getBotId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "recent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 188
    iget p1, p1, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 189
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botContextMenu:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getBotId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getBotName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private final wrapTabIndicatorToTitle()V
    .locals 8

    const/high16 v0, 0x41600000    # 14.0f

    .line 200
    invoke-static {p0, v0}, Lcom/iMe/ui/smartpanel/extension/SmartPanelViewExtKt;->floatToDp(Lcom/iMe/ui/smartpanel/SmartBotsView;F)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 202
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 203
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 205
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 207
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v5, v0, v6, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setTabMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrentAccount()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentAccount:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 117
    iget p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->panelHeight:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setData(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;Z)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->mapper:Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;

    sget-object v2, Lcom/iMe/fork/controller/NeuroBotsController;->Companion:Lcom/iMe/fork/controller/NeuroBotsController$Companion;

    iget v3, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentAccount:I

    invoke-virtual {v2, v3}, Lcom/iMe/fork/controller/NeuroBotsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;->mapToTabs(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->binding:Lorg/telegram/messenger/databinding/ForkPanelViewBinding;

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->textEmptyBots:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->textEmptyBots:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkPanelViewBinding;->viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->pagerAdapter:Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p2, :cond_1

    .line 93
    sget-object p1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 94
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->contentViews:Ljava/util/List;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-virtual {p2, v0}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->setBotResponseType(Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->pagerAdapter:Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->setupLayoutBottom()V

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateIcons()V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateIndicator()V

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->updateTabListeners()V

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->wrapTabIndicatorToTitle()V

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->moveToInitialPosition()V

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->firePageSelectedEvent()V

    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .line 70
    iput p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->panelHeight:I

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final setListener(Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView;->listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;->onTranslationYChanged(F)V

    :cond_0
    return-void
.end method
