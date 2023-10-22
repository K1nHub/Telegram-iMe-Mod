.class public final Lcom/iMe/utils/dialogs/DialogExtKt;
.super Ljava/lang/Object;
.source "DialogExt.kt"


# direct methods
.method public static final makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->setButtonColor(Lorg/telegram/ui/ActionBar/AlertDialog;II)V

    return-void
.end method

.method public static final setButtonColor(Lorg/telegram/ui/ActionBar/AlertDialog;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
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
