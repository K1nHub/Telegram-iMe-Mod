.class public final Lorg/fork/ui/dialog/PromoSubscribeAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "PromoSubscribeAlert.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/PromoSubscribeAlert$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPromoSubscribeAlert.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PromoSubscribeAlert.kt\norg/fork/ui/dialog/PromoSubscribeAlert\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,199:1\n13536#2,2:200\n13536#2,2:202\n61#3,4:204\n*S KotlinDebug\n*F\n+ 1 PromoSubscribeAlert.kt\norg/fork/ui/dialog/PromoSubscribeAlert\n*L\n107#1:200,2\n165#1:202,2\n182#1:204,4\n*E\n"
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
.method public static synthetic $r8$lambda$686HighrLmC8Y959C7NESFvJM88(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames$lambda-20$lambda-19$lambda-18(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9DGuG50l4aoLGm1izvQS5s8V9fA(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initChatsView$lambda-11$lambda-10$lambda-9$lambda-8(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gc1O-4k4GumOlU0EJiGADt8Ja9M(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initSkipButton$lambda-16$lambda-15(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UL3VlcdcIijy8cj9eM65CSwDNKA(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->_init_$lambda-2(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhYGg5gM795dKUrlyK6lVYScqa8(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames$lambda-20$lambda-19(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoLDiBAVQRzYnymSc8P2zVReXpI(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBoxContainer$lambda-14$lambda-13(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/dialog/PromoSubscribeAlert$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/PromoSubscribeAlert$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LaunchActivity;I)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->activity:Lorg/telegram/ui/LaunchActivity;

    .line 40
    iput p2, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    .line 44
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$titleTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$titleTextView$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->titleTextView$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$subtitleTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$subtitleTextView$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->subtitleTextView$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->loadingView$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$chatsView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$chatsView$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->chatsView$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBoxContainer$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBoxContainer$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBoxContainer$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBox$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$notShowAgainCheckBox$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBox$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$skipButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$skipButton$2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->skipButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0xa6

    .line 59
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopHeight(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 60
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_promo_subscribe_dialog_icon:I

    const-string/jumbo p2, "windowBackgroundGray"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImage(II)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 61
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 62
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImagePaddings(IIII)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 63
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x11

    const/16 v4, 0x16

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getSkipButton()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x2c

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 74
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnBackButtonListener(Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 75
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->resolvePromoUsernames()V

    return-void
.end method

.method private static final _init_$lambda-2(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    return-void
.end method

.method public static final synthetic access$initChatsView(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initChatsView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLoadingView(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initLoadingView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNotShowAgainCheckBox(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNotShowAgainCheckBoxContainer(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSkipButton(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initSkipButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSubtitleTextView(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initSubtitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lorg/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/TextView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final checkNotShowAgainCheckBox()V
    .locals 4

    .line 151
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/fork/enums/AppLaunchCountAction;->PROMO_SUBSCRIBE_DIALOG:Lorg/fork/enums/AppLaunchCountAction;

    invoke-virtual {v1}, Lorg/fork/enums/AppLaunchCountAction;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smedialink/storage/data/utils/extentions/SharedPrefferencesExtKt;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->promoSubscribeDialogShowCountLeft()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->promoSubscribeDialogShowCountLeft()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 156
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->promoSubscribeDialogShowCountLeft()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/smedialink/storage/data/utils/extentions/SharedPrefferencesExtKt;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private final endLoading()V
    .locals 14

    .line 181
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 182
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 62
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "getChildAt(index)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    check-cast v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 184
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type org.fork.enums.PromoSubscribeChat"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lorg/fork/enums/PromoSubscribeChat;

    .line 185
    iget v7, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v6}, Lorg/fork/enums/PromoSubscribeChat;->getId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 186
    invoke-virtual {v6}, Lorg/fork/enums/PromoSubscribeChat;->getDescriptionResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getInternalString(promo.descriptionResId)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 187
    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v5, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    if-lt v4, v1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_0

    .line 189
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    return-void
.end method

.method private final getChatsView()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->chatsView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLoadingView()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->loadingView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    return-object v0
.end method

.method private final getNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->notShowAgainCheckBoxContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSkipButton()Landroid/widget/TextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->skipButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->subtitleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initChatsView()Landroid/widget/LinearLayout;
    .locals 8

    .line 105
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v1

    .line 13536
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 108
    new-instance v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v5}, Lorg/fork/enums/PromoSubscribeChat;->getRightIconResId()I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setPromoSubscribeIcon(I)V

    .line 112
    new-instance v5, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final initChatsView$lambda-11$lambda-10$lambda-9$lambda-8(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    iget-object p0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->activity:Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type org.fork.enums.PromoSubscribeChat"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/fork/enums/PromoSubscribeChat;

    invoke-virtual {p1}, Lorg/fork/enums/PromoSubscribeChat;->getId()J

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

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 97
    new-instance v5, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 99
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    const/16 v6, 0x64

    .line 100
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 101
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final initNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initNotShowAgainCheckBoxContainer()Landroid/widget/LinearLayout;
    .locals 10

    .line 121
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    sget v2, Lorg/telegram/messenger/R$string;->common_not_show_again:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x13

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "dialogTextBlack"

    .line 127
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v1, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda3;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initNotShowAgainCheckBoxContainer$lambda-14$lambda-13(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p1

    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getNotShowAgainCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

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

    .line 137
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v2, "Close"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Close\", R.string.Close)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/rmedium.ttf"

    .line 139
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 141
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "featuredStickers_addButtonPressed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "featuredStickers_buttonText"

    .line 143
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    new-instance v1, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSkipButton$lambda-16$lambda-15(Lorg/fork/ui/dialog/PromoSubscribeAlert;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->checkNotShowAgainCheckBox()V

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final initSubtitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 88
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    sget v1, Lorg/telegram/messenger/R$string;->dialog_promo_subscribe_subtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "dialogTextGray3"

    .line 90
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 80
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    sget v1, Lorg/telegram/messenger/R$string;->dialog_promo_subscribe_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fonts/rmedium.ttf"

    .line 82
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "dialogTextBlack"

    .line 84
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final resolvePromoUsernames()V
    .locals 7

    .line 162
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getChatsView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 163
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->getLoadingView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 164
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 165
    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v1

    .line 13536
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 166
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 167
    invoke-virtual {v4}, Lorg/fork/enums/PromoSubscribeChat;->getUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 168
    iget v4, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final resolvePromoUsernames$lambda-20$lambda-19(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$counter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 169
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    if-eqz p3, :cond_0

    .line 170
    iget p3, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert;->accountNum:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 171
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p2, :cond_0

    .line 173
    new-instance p1, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda4;-><init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final resolvePromoUsernames$lambda-20$lambda-19$lambda-18(Lorg/fork/ui/dialog/PromoSubscribeAlert;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->endLoading()V

    return-void
.end method
