.class public final Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;
.super Landroid/widget/FrameLayout;
.source "DonationSeeMoreButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationSeeMoreButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationSeeMoreButton.kt\ncom/smedialink/ui/custom/donation/DonationSeeMoreButton\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n169#2,2:72\n*S KotlinDebug\n*F\n+ 1 DonationSeeMoreButton.kt\ncom/smedialink/ui/custom/donation/DonationSeeMoreButton\n*L\n60#1:72,2\n*E\n"
.end annotation


# instance fields
.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton$textView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton$textView$2;-><init>(Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->textView$delegate:Lkotlin/Lazy;

    .line 25
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->setupColors()V

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const/4 v0, -0x1

    const/16 v1, 0x28

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$initTextView(Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->initTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    return-object p0
.end method

.method private final getTextView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private final initTextView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 3

    .line 55
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 57
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 58
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v1, 0x11

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0xa

    .line 60
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setupColors()V
    .locals 4

    const-string v0, "windowBackgroundWhite"

    .line 36
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 37
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationSeeMoreButton;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const-string v1, "featuredStickers_buttonText"

    .line 38
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x6

    .line 39
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const-string v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "featuredStickers_addButtonPressed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
