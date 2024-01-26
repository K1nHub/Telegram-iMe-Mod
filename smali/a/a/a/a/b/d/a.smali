.class public final La/a/a/a/b/d/a;
.super Landroidx/appcompat/app/AppCompatDialog;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/b/d/a$a;
    }
.end annotation


# instance fields
.field public a:La/a/a/a/b/d/a$a;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okBtnTxt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, La/a/a/a/b/d/a;->e:Ljava/lang/String;

    iput-object p3, p0, La/a/a/a/b/d/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/binance/android/binancepay/R$id;->btn_ok:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/a/a/a/b/d/a;->a:La/a/a/a/b/d/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, La/a/a/a/b/d/a$a;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/binance/android/binancepay/R$id;->btn_cancel:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/b/d/a;->a:La/a/a/a/b/d/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, La/a/a/a/b/d/a$a;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p1, Lcom/binance/android/binancepay/R$layout;->binance_pay_dialog_common:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 1
    sget p1, Lcom/binance/android/binancepay/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, La/a/a/a/b/d/a;->b:Landroid/widget/Button;

    sget p1, Lcom/binance/android/binancepay/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, La/a/a/a/b/d/a;->c:Landroid/widget/Button;

    sget p1, Lcom/binance/android/binancepay/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, La/a/a/a/b/d/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p0, La/a/a/a/b/d/a;->b:Landroid/widget/Button;

    const-string v0, "confirmBtn"

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/a/a/b/d/a;->c:Landroid/widget/Button;

    if-nez p1, :cond_4

    const-string v1, "cancelBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/a/a/b/d/a;->b:Landroid/widget/Button;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, La/a/a/a/b/d/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, La/a/a/a/b/d/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_6

    const-string v0, "contentTv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, La/a/a/a/b/d/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method
