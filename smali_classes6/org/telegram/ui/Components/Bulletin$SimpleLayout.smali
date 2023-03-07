.class public Lorg/telegram/ui/Components/Bulletin$SimpleLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleLayout"
.end annotation


# instance fields
.field public final imageView:Landroid/widget/ImageView;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1064
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string p2, "undo_infoColor"

    .line 1066
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    .line 1068
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    .line 1069
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const v5, 0x800013

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41400000    # 12.0f

    .line 1070
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    .line 1073
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1074
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1075
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    const/high16 p2, 0x41700000    # 15.0f

    .line 1076
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800013

    const/high16 v4, 0x42600000    # 56.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1077
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
