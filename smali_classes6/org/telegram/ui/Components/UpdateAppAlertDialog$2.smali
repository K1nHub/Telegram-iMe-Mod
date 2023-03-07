.class Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;
.super Landroidx/core/widget/NestedScrollView;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UpdateAppAlertDialog;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 207
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$200(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$600(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/NestedScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 188
    iget-object p2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$600(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 189
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    sub-int v2, p2, v2

    const/16 v3, 0x5a

    .line 191
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-lt v2, v4, :cond_0

    div-int/lit8 v2, v0, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    :cond_0
    sub-int v1, v0, p2

    :cond_1
    const/4 p2, 0x0

    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v2, 0x1

    .line 198
    iput-boolean v2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->ignoreLayout:Z

    .line 199
    invoke-virtual {p0, p2, v1, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 200
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->ignoreLayout:Z

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 202
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$200(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method
