.class public final Lcom/smedialink/ui/dialog/FullscreenContentDialog;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "FullscreenContentDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;


# direct methods
.method public static synthetic $r8$lambda$85t4RhmYlHeZ2p_4beZX9xsImvQ(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->_init_$lambda$3(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->Companion:Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 34
    iget-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->imageAlertResult:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 38
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x96

    invoke-virtual {v0, p2, p3, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 40
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    const/4 p2, -0x1

    if-eq p4, p2, :cond_1

    const-string p2, "lambda$2$lambda$0"

    .line 45
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 50
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "chat_messagePanelText"

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "windowBackgroundWhiteGrayText2"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    new-instance p1, Lcom/smedialink/ui/dialog/FullscreenContentDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/dialog/FullscreenContentDialog;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/smedialink/ui/dialog/FullscreenContentDialog;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    return-object p0
.end method
