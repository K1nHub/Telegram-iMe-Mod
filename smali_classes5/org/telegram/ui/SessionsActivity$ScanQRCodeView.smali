.class Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;
.super Landroid/widget/FrameLayout;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SessionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanQRCodeView"
.end annotation


# instance fields
.field buttonTextView:Landroid/widget/TextView;

.field flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field imageView:Lorg/telegram/ui/Components/BackupImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public static synthetic $r8$lambda$pGTppGo-PlsOBUGpVF4avuT2B0U(Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .locals 13

    .line 966
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    .line 967
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 964
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 968
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x78

    const/16 v2, 0x78

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 969
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    const v2, 0x3f99999a    # 1.2f

    .line 972
    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$1;-><init>(Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 985
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    const-string v2, "windowBackgroundWhite"

    .line 988
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    const-string v3, "featuredStickers_addButton"

    .line 991
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    .line 994
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    .line 996
    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v8, 0x24

    const/16 v9, 0x98

    const/16 v10, 0x24

    const/4 v11, 0x0

    .line 997
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x10e

    .line 1000
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v5, 0x96

    .line 1001
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1002
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0xb4

    .line 1003
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1005
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1006
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteLinkText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteLinkSelection"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1010
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1012
    sget v0, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo4:I

    const-string v2, "AuthAnotherClientInfo4"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    .line 1014
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 1015
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v8, 0x21

    const-string v9, ""

    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v6, v0, :cond_0

    .line 1018
    iget-object v11, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    new-instance v12, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v12}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v11, v0, 0x1

    .line 1019
    invoke-virtual {v2, v0, v11, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1020
    invoke-virtual {v2, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1021
    new-instance v7, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v11, "https://apps.apple.com/us/app/ime-messenger/id1450480822"

    invoke-direct {v7, v11}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v5

    invoke-virtual {v2, v7, v6, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1024
    :cond_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 1026
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v6, v10, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v6, v0, :cond_1

    .line 1029
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v11}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v4, v0, 0x1

    .line 1030
    invoke-virtual {v2, v0, v4, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1031
    invoke-virtual {v2, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1032
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    sget-object v7, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v5

    invoke-virtual {v2, v4, v6, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1036
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "*"

    .line 1037
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 1038
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v6, v10, :cond_2

    if-eq v0, v10, :cond_2

    if-eq v6, v0, :cond_2

    .line 1040
    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v4, v0, 0x1

    .line 1041
    invoke-virtual {v2, v0, v4, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1042
    invoke-virtual {v2, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1043
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v7, "https://imem.app/desktop"

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v5

    invoke-virtual {v2, v4, v6, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1046
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    new-instance v0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$2;-><init>(Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;Landroid/content/Context;Lorg/telegram/ui/SessionsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const/16 p1, 0x22

    .line 1061
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1062
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1063
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1066
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string p2, ".  "

    .line 1067
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->LinkDesktopDevice:I

    const-string v2, "LinkDesktopDevice"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1068
    new-instance p2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_qr:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2, v1, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1069
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const-string p2, "featuredStickers_buttonText"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "featuredStickers_addButtonPressed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/16 v1, 0x30

    const/16 v2, 0x50

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->setSticker()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 1075
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1078
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1079
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1082
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$3600(Lorg/telegram/ui/SessionsActivity;)V

    return-void
.end method

.method private setSticker()V
    .locals 6

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$3300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v1, "tg_placeholders_android"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$3400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    .line 1127
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 1133
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const v4, 0x3e4ccccd    # 0.2f

    const-string v5, "emptyListPlaceholder"

    invoke-static {v2, v5, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    const/16 v4, 0x200

    .line 1136
    invoke-virtual {v2, v4, v4}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_3
    if-eqz v3, :cond_4

    .line 1140
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_devices:I

    const/16 v2, 0x10e

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAnimation(III)V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_2

    .line 1145
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$3500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    :goto_2
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1109
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1110
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "tg_placeholders_android"

    .line 1111
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1112
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->setSticker()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1096
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1097
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->setSticker()V

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$3100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$3200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1091
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
