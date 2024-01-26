.class public final Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "PromoSubscribeAlert.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPromoSubscribeAlert.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PromoSubscribeAlert.kt\ncom/iMe/fork/ui/dialog/PromoSubscribeAlert\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,245:1\n13579#2,2:246\n13579#2,2:248\n62#3,4:250\n*S KotlinDebug\n*F\n+ 1 PromoSubscribeAlert.kt\ncom/iMe/fork/ui/dialog/PromoSubscribeAlert\n*L\n124#1:246,2\n203#1:248,2\n221#1:250,4\n*E\n"
.end annotation


# instance fields
.field private final accountNum:I

.field private final activity:Lorg/telegram/ui/LaunchActivity;

.field private final chatsView$delegate:Lkotlin/Lazy;

.field private final loadingView$delegate:Lkotlin/Lazy;

.field private final notShowAgainCheckBox$delegate:Lkotlin/Lazy;

.field private final notShowAgainCheckBoxContainer$delegate:Lkotlin/Lazy;

.field private final skipButton$delegate:Lkotlin/Lazy;

.field private final subtitleTextView$delegate:Lkotlin/Lazy;

.field private final titleTextView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$39HhrHHqvF14MmpsXmU7T1X7bhk(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames$lambda$20$lambda$19$lambda$18(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LV0UO6xCCEQKdd9lnrtv2lBAhwg(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initSkipButton$lambda$16$lambda$15(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObRoZmB5-RvcA46uDnJ64O6g7SQ(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->_init_$lambda$2(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RpgT7XyvW8c6TbRl785GJyNeG60(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames$lambda$20$lambda$19(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lt-XCUIM1iow_19AJwSUymb39ho(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBoxContainer$lambda$14$lambda$13(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yx0zap0MXC4IHzch0EMlooZRJv4(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initChatsView$lambda$11$lambda$10$lambda$9$lambda$8(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LaunchActivity;I)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->activity:Lorg/telegram/ui/LaunchActivity;

    .line 40
    iput p2, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    .line 44
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$titleTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->titleTextView$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$subtitleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$subtitleTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->subtitleTextView$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->loadingView$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$chatsView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$chatsView$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->chatsView$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBoxContainer$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBoxContainer$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBoxContainer$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBox$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBox$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBox$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$skipButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$skipButton$2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->skipButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0xa6

    .line 59
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopHeight(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 61
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_promo_subscribe_dialog_icon:I

    .line 62
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImage(II)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 64
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 68
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImagePaddings(IIII)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 71
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 76
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x11

    const/16 v4, 0x16

    const/16 v6, 0x16

    const/4 v7, 0x0

    .line 81
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v6, 0x10

    .line 84
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 82
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getSkipButton()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x2c

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0xa

    .line 88
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 91
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnBackButtonListener(Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames()V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    return-void
.end method

.method public static final synthetic access$initChatsView(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initChatsView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLoadingView(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initLoadingView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNotShowAgainCheckBox(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNotShowAgainCheckBoxContainer(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSkipButton(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initSkipButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSubtitleTextView(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initSubtitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final checkNotShowAgainCheckBox()V
    .locals 4

    .line 183
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v1

    const-string v2, "checkNotShowAgainCheckBox$lambda$17"

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/iMe/fork/enums/AppLaunchCountAction;->PROMO_SUBSCRIBE_DIALOG:Lcom/iMe/fork/enums/AppLaunchCountAction;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/AppLaunchCountAction;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/storage/data/utils/extentions/SharedPrefferencesExtKt;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->promoSubscribeDialogShowCountLeft()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->promoSubscribeDialogShowCountLeft()I

    move-result v3

    .line 187
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->promoSubscribeDialogShowCountLeft()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    .line 191
    invoke-static {v0, v2, v1}, Lcom/iMe/storage/data/utils/extentions/SharedPrefferencesExtKt;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private final endLoading()V
    .locals 15

    .line 220
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    .line 63
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "getChildAt(index)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type org.telegram.ui.Cells.ProfileSearchCell"

    .line 222
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 223
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.iMe.fork.enums.PromoSubscribeChat"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/iMe/fork/enums/PromoSubscribeChat;

    .line 224
    iget v8, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v7}, Lcom/iMe/fork/enums/PromoSubscribeChat;->getId()J

    move-result-wide v9

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 229
    invoke-virtual {v7}, Lcom/iMe/fork/enums/PromoSubscribeChat;->getDescriptionResId()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getInternalString(promo.descriptionResId)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v6

    .line 225
    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 233
    invoke-static {}, Lcom/iMe/fork/enums/PromoSubscribeChat;->values()[Lcom/iMe/fork/enums/PromoSubscribeChat;

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v2

    if-ge v5, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    iput-boolean v7, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method private final getChatsView()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->chatsView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLoadingView()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->loadingView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    return-object v0
.end method

.method private final getNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBoxContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSkipButton()Landroid/widget/TextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->skipButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->subtitleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initChatsView()Landroid/widget/LinearLayout;
    .locals 8

    .line 122
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    invoke-static {}, Lcom/iMe/fork/enums/PromoSubscribeChat;->values()[Lcom/iMe/fork/enums/PromoSubscribeChat;

    move-result-object v1

    .line 13579
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 125
    new-instance v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v5}, Lcom/iMe/fork/enums/PromoSubscribeChat;->getRightIconResId()I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setPromoSubscribeIcon(I)V

    .line 129
    new-instance v5, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final initChatsView$lambda$11$lambda$10$lambda$9$lambda$8(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->activity:Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type com.iMe.fork.enums.PromoSubscribeChat"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/enums/PromoSubscribeChat;

    invoke-virtual {p1}, Lcom/iMe/fork/enums/PromoSubscribeChat;->getId()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "chat_id"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private final initLoadingView()Landroid/widget/LinearLayout;
    .locals 7

    .line 111
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    invoke-static {}, Lcom/iMe/fork/enums/PromoSubscribeChat;->values()[Lcom/iMe/fork/enums/PromoSubscribeChat;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 114
    new-instance v5, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 116
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    const/16 v6, 0x64

    .line 117
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 114
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final initNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 163
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;
    .locals 11

    .line 138
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 140
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 143
    sget v2, Lorg/telegram/messenger/R$string;->common_not_show_again:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x13

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x33

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 148
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initNotShowAgainCheckBoxContainer$lambda$14$lambda$13(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method private final initSkipButton()Landroid/widget/TextView;
    .locals 4

    .line 165
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v2, "Close"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Close\", R.string.Close)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/rmedium.ttf"

    .line 167
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 170
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 171
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 172
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 169
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    new-instance v1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSkipButton$lambda$16$lambda$15(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final initSubtitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 105
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    sget v1, Lorg/telegram/messenger/R$string;->dialog_promo_subscribe_subtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 97
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    sget v1, Lorg/telegram/messenger/R$string;->dialog_promo_subscribe_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/rmedium.ttf"

    .line 99
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final resolvePromoUsernames()V
    .locals 7

    .line 200
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 202
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static {}, Lcom/iMe/fork/enums/PromoSubscribeChat;->values()[Lcom/iMe/fork/enums/PromoSubscribeChat;

    move-result-object v2

    array-length v2, v2

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 203
    invoke-static {}, Lcom/iMe/fork/enums/PromoSubscribeChat;->values()[Lcom/iMe/fork/enums/PromoSubscribeChat;

    move-result-object v2

    .line 13579
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 204
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 205
    invoke-virtual {v4}, Lcom/iMe/fork/enums/PromoSubscribeChat;->getUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 206
    iget v4, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    .line 207
    new-instance v6, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final resolvePromoUsernames$lambda$20$lambda$19(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$counter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 208
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    if-eqz p3, :cond_0

    .line 209
    iget p3, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 210
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p2, :cond_0

    .line 212
    new-instance p1, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final resolvePromoUsernames$lambda$20$lambda$19$lambda$18(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->endLoading()V

    return-void
.end method
