.class public Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoLineLottieLayout"
.end annotation


# instance fields
.field public final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field public final subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final textColor:I

.field public final titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1157
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string/jumbo p2, "undo_infoColor"

    .line 1158
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->textColor:I

    const-string/jumbo v0, "undo_background"

    .line 1159
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    .line 1161
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1162
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v1, 0x42600000    # 56.0f

    const/high16 v2, 0x42400000    # 48.0f

    const v3, 0x800013

    .line 1163
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v0, "undo_cancelColor"

    .line 1166
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 1168
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1169
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, -0x40000000    # -2.0f

    const v5, 0x800013

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 1170
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v4, 0x4

    .line 1173
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1174
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 1175
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 1176
    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "fonts/rmedium.ttf"

    .line 1177
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1178
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1180
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 1181
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, p1, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1182
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1183
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1184
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 1185
    invoke-virtual {v3, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1186
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 2

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onShow()V
    .locals 1

    .line 1191
    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onShow()V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method public varargs setAnimation(III[Ljava/lang/String;)V
    .locals 2

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1201
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".**"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->textColor:I

    invoke-virtual {v0, p3, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setAnimation(I[Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x20

    .line 1196
    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    return-void
.end method
