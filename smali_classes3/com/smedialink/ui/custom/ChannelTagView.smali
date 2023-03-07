.class public Lcom/smedialink/ui/custom/ChannelTagView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ChannelTagView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChannelTagView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/ChannelTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupView()V
    .locals 3

    const-string v0, "chats_actionBackground"

    .line 27
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 33
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v0, 0x6

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/4 v0, 0x2

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setVerticalPadding(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method
