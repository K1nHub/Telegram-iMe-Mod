.class Lorg/telegram/ui/Components/EmojiView$34;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 3387
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    .line 3390
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$13100(Lorg/telegram/ui/Components/EmojiView;IF)V

    .line 3391
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, p3}, Lorg/telegram/ui/Components/EmojiView;->access$13200(Lorg/telegram/ui/Components/EmojiView;III)V

    .line 3392
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x1

    invoke-static {p3, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->access$3200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    const/4 p3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    cmpl-float v2, p2, p3

    if-gtz v2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    .line 3395
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$12300(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3397
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3398
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {p2, v3}, Lorg/telegram/ui/Components/EmojiView;->access$12400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3399
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3400
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void

    .line 3405
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 3408
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 3411
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    :cond_6
    if-ne v2, v0, :cond_7

    .line 3413
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    .line 3415
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    .line 3417
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_d

    if-ne v5, v1, :cond_8

    .line 3422
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    :cond_8
    if-nez v5, :cond_9

    .line 3425
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    :cond_9
    if-ne v5, v0, :cond_a

    .line 3427
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    .line 3429
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_c

    if-eq v6, v2, :cond_c

    .line 3431
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    .line 3434
    :cond_b
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3435
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_c
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3437
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez p1, :cond_e

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_f

    :cond_e
    if-ne p1, v0, :cond_10

    :cond_f
    const/4 v3, 0x1

    :cond_10
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->access$12400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3438
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3439
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 3444
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3445
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/EmojiView;->access$13600(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3446
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$13700(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3447
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3450
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3451
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 3455
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3456
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    .line 3459
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3460
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 3463
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3464
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_5
    :goto_1
    return-void
.end method
