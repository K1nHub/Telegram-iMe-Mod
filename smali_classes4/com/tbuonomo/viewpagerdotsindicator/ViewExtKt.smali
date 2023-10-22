.class public final Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;
.super Ljava/lang/Object;
.source "ViewExt.kt"


# direct methods
.method public static final setPaddingHorizontal(Landroid/view/View;I)V
    .locals 2

    const-string v0, "$this$setPaddingHorizontal"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final setPaddingVertical(Landroid/view/View;I)V
    .locals 2

    const-string v0, "$this$setPaddingVertical"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
