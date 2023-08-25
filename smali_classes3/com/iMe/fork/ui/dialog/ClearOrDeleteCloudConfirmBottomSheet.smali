.class public final Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ClearOrDeleteCloudConfirmBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$Companion;
    }
.end annotation


# instance fields
.field private final doneButton$delegate:Lkotlin/Lazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final inputEditText$delegate:Lkotlin/Lazy;

.field private final onPassed:Ljava/lang/Runnable;

.field private final rootLinear$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$EOXZ_OpAKO-Xtk3NFpIvwK4cZzs(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->initInputEditText$lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HG4C05L2I7oQpVcp8gfH0qxgeWA(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->initDoneButton$lambda$4$lambda$3(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;)V
    .locals 9

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPassed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 23
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 25
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->onPassed:Ljava/lang/Runnable;

    .line 29
    new-instance p3, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$rootLinear$2;

    invoke-direct {p3, p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$rootLinear$2;-><init>(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->rootLinear$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p3, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2;

    invoke-direct {p3, p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2;-><init>(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->inputEditText$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p3, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$doneButton$2;

    invoke-direct {p3, p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$doneButton$2;-><init>(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->doneButton$delegate:Lkotlin/Lazy;

    .line 34
    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_0

    .line 35
    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p1

    invoke-static {p3, p1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    :cond_0
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    if-eqz p2, :cond_1

    .line 40
    sget p1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    const-string p2, "ClearHistory"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 42
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->DeleteChatUser:I

    const-string p2, "DeleteChatUser"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 45
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x15

    const/16 v6, 0xa

    const/16 v7, 0x15

    const/16 v8, 0xa

    .line 47
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 54
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getDoneButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object p2

    const/4 p3, -0x1

    const/16 v0, 0x32

    const/16 v2, 0x33

    .line 55
    invoke-static {p3, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 58
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    return-void
.end method

.method public static final synthetic access$initDoneButton(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->initDoneButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initInputEditText(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->initInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootLinear(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->initRootLinear()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private final checkCaptcha()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0123456789"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->onPassed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->shake(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private final getDoneButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->doneButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    return-object v0
.end method

.method private final getInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->inputEditText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method private final getRootLinear()Landroid/widget/LinearLayout;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->rootLinear$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final initDoneButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 3

    .line 94
    new-instance v0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->getBackgroundPublic()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v1, Lorg/telegram/messenger/R$string;->cloud_clear_or_delete_captcha_alert_positive_button:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static final initDoneButton$lambda$4$lambda$3(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->checkCaptcha()V

    return-void
.end method

.method private final initInputEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 4

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0xc000

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x6

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 83
    sget v2, Lorg/telegram/messenger/R$string;->cloud_clear_or_delete_captcha_alert_message:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    .line 85
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 86
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 87
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 88
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v2, 0x14

    .line 89
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 90
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 91
    new-instance v2, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->onAction(Landroid/widget/EditText;ILcom/iMe/fork/utils/Callbacks$Callback;)V

    return-object v0
.end method

.method private static final initInputEditText$lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->getDoneButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->getBackgroundPublic()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private final initRootLinear()Landroid/widget/LinearLayout;
    .locals 2

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method


# virtual methods
.method public dismissInternal()V
    .locals 2

    .line 64
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 65
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ClearOrDeleteCloudConfirmBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
