.class public final Lcom/iMe/fork/ui/view/AccountLevelBadgeView;
.super Landroid/widget/LinearLayout;
.source "AccountLevelBadgeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/AccountLevelBadgeView$Companion;
    }
.end annotation


# instance fields
.field private final iconView$delegate:Lkotlin/Lazy;

.field private final nameTextView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$nameTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$nameTextView$2;-><init>(Lcom/iMe/fork/ui/view/AccountLevelBadgeView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->nameTextView$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$iconView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView$iconView$2;-><init>(Lcom/iMe/fork/ui/view/AccountLevelBadgeView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->iconView$delegate:Lkotlin/Lazy;

    const/16 p1, 0x11

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 31
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 32
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, -0x2

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$createIconView(Lcom/iMe/fork/ui/view/AccountLevelBadgeView;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->createIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNameTextView(Lcom/iMe/fork/ui/view/AccountLevelBadgeView;)Landroid/widget/TextView;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->createNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final createIconView()Landroid/widget/ImageView;
    .locals 2

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final createNameTextView()Landroid/widget/TextView;
    .locals 3

    .line 56
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v2, -0x1

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "accountLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_account_level_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41980000    # 19.0f

    .line 41
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->getColorResId()I

    move-result p1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
