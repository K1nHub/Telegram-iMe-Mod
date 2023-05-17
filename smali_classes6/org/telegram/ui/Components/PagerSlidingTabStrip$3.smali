.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;
.super Landroid/widget/TextView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Landroid/content/Context;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iput p3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->val$position:I

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    iget v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->val$position:I

    invoke-interface {v0, p1, p0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;->customOnDraw(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .line 198
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 199
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I

    move-result v1

    const/16 v2, 0x1e

    .line 202
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    goto :goto_1

    :cond_2
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    :goto_1
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
