.class Lorg/telegram/ui/Components/EmojiView$32;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

    .line 2995
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

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

    .line 2998
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$12400(Lorg/telegram/ui/Components/EmojiView;IF)V

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, p3}, Lorg/telegram/ui/Components/EmojiView;->access$12500(Lorg/telegram/ui/Components/EmojiView;III)V

    .line 3000
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x1

    invoke-static {p3, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->access$3100(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    const/4 p3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    cmpl-float v2, p2, p3

    if-gtz v2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    .line 3003
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$11600(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3007
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 3010
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$12600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 3013
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$8300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_5

    .line 3015
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    goto :goto_0

    .line 3017
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    .line 3019
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_b

    if-ne v5, v1, :cond_6

    .line 3024
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$12600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    .line 3027
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$8300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    :cond_7
    if-ne v5, v0, :cond_8

    .line 3029
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    goto :goto_2

    .line 3031
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_a

    if-eq v6, v2, :cond_a

    .line 3033
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    .line 3036
    :cond_9
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3037
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3039
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez p1, :cond_c

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_d

    :cond_c
    if-ne p1, v0, :cond_e

    :cond_d
    move v4, v0

    :cond_e
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->access$11700(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3040
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3041
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 3046
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 3047
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/EmojiView;->access$12900(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$13000(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3049
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3052
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3053
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 3057
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3058
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    .line 3061
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3062
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 3065
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3066
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$32;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_5
    :goto_1
    return-void
.end method
