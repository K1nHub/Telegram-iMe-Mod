.class public final Lcom/iMe/ui/dialog/FullscreenContentDialog;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "FullscreenContentDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;


# direct methods
.method public static synthetic $r8$lambda$kL9ref7S0zwGy429m7ExVMAwdJU(Lcom/iMe/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/dialog/FullscreenContentDialog;->_init_$lambda$3(Lcom/iMe/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/dialog/FullscreenContentDialog;->Companion:Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 37
    iget-object p1, p0, Lcom/iMe/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->imageAlertResult:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 41
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x96

    invoke-virtual {v0, p2, p3, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 43
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 47
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    const/4 p2, -0x1

    if-eq p4, p2, :cond_1

    const-string p2, "lambda$2$lambda$0"

    .line 49
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 54
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    new-instance p1, Lcom/iMe/ui/dialog/FullscreenContentDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/ui/dialog/FullscreenContentDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/dialog/FullscreenContentDialog;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/iMe/ui/dialog/FullscreenContentDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/iMe/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/iMe/ui/dialog/FullscreenContentDialog;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/ui/dialog/FullscreenContentDialog;->binding:Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    return-object p0
.end method
