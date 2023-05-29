.class public final Lcom/iMe/utils/dialogs/DialogExtKt;
.super Ljava/lang/Object;
.source "DialogExt.kt"


# direct methods
.method public static synthetic $r8$lambda$ncpJxMl1QE3Xpv9x88OZnTQN_F4(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeClickableDescription$lambda$1(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qptwt099xgyA--bhWUG4myedXic(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeClickableDescription$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final makeClickableDescription(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/AlertDialog;",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/DialogInterface;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public static synthetic makeClickableDescription$default(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeClickableDescription(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final makeClickableDescription$lambda$1(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "$this_makeClickableDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$clickableText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 11
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getMessageTextView()Landroid/widget/TextView;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 12
    new-instance p1, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, p4}, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    invoke-static {p0, p2, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_1
    return-void
.end method

.method private static final makeClickableDescription$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogInterface"

    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->setButtonColor(Lorg/telegram/ui/ActionBar/AlertDialog;II)V

    return-void
.end method

.method public static final setButtonColor(Lorg/telegram/ui/ActionBar/AlertDialog;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
