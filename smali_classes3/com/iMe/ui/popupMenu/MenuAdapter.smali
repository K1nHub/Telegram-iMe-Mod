.class public final Lcom/iMe/ui/popupMenu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private maxWidth:I

.field private final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/popupMenu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/iMe/ui/popupMenu/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->menuItems:Ljava/util/List;

    .line 19
    invoke-direct {p0}, Lcom/iMe/ui/popupMenu/MenuAdapter;->measureMaxWidth()V

    return-void
.end method

.method private final measureMaxWidth()V
    .locals 4

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 58
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object v1, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/popupMenu/MenuItem;

    .line 63
    invoke-virtual {v2}, Lcom/iMe/ui/popupMenu/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 64
    iget v3, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->maxWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    float-to-int v2, v2

    iput v2, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->maxWidth:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/iMe/ui/popupMenu/MenuItem;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/popupMenu/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/iMe/ui/popupMenu/MenuAdapter;->getItem(I)Lcom/iMe/ui/popupMenu/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->maxWidth:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$layout;->fork_custom_menu_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "from(context).inflate(R.\u2026menu_item, parent, false)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p3, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.iMe.ui.popupMenu.MenuAdapter.ViewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/iMe/ui/popupMenu/MenuAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/popupMenu/MenuItem;

    .line 46
    invoke-virtual {p3}, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/ui/popupMenu/MenuItem;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    invoke-virtual {p3}, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/ui/popupMenu/MenuItem;->getIconColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setTint(Landroid/widget/ImageView;I)V

    .line 48
    invoke-virtual {p3}, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/ui/popupMenu/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p3}, Lcom/iMe/ui/popupMenu/MenuAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/iMe/ui/popupMenu/MenuItem;->getItemTextColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
