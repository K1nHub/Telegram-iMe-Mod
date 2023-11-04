.class public Lorg/telegram/ui/Components/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/QuoteSpan$Block;,
        Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;
    }
.end annotation


# instance fields
.field public adaptLineHeight:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final backgroundPathRadii:[F

.field private color:I

.field public final edit:Z

.field public end:I

.field public first:Z

.field public last:Z

.field private final linePaint:Landroid/graphics/Paint;

.field private final linePath:Landroid/graphics/Path;

.field private final linePathRadii:[F

.field private final quoteDrawable:Landroid/graphics/drawable/Drawable;

.field public rtl:Z

.field public singleLine:Z

.field public start:I

.field public final styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;


# direct methods
.method public constructor <init>(ZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 54
    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPathRadii:[F

    .line 55
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPath:Landroid/graphics/Path;

    .line 57
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    new-array v0, v2, [F

    .line 58
    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePathRadii:[F

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePath:Landroid/graphics/Path;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    .line 65
    iput-object p2, p0, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    .line 67
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->mini_quote:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    const/16 p2, 0x1e

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/QuoteSpan;)[F
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPathRadii:[F

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/QuoteSpan;)[F
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePathRadii:[F

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static putQuote(Landroid/text/Spannable;II)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 129
    :cond_0
    const-class v1, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/QuoteSpan;

    if-eqz v1, :cond_1

    .line 130
    array-length v1, v1

    if-lez v1, :cond_1

    return v0

    .line 133
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    .line 134
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-direct {v0}, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;-><init>()V

    .line 136
    new-instance v2, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Components/QuoteSpan;-><init>(ZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    .line 137
    iput p1, v2, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    .line 138
    iput p2, v2, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    const/16 v1, 0x21

    .line 139
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 140
    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return p2
.end method

.method public static putQuoteToEditable(Landroid/text/Editable;II)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 148
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    .line 149
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    const-string v0, "\n"

    const/16 v1, 0xa

    if-lez p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    .line 150
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    .line 151
    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 156
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    invoke-interface {p0, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_3

    .line 157
    :cond_2
    invoke-interface {p0, p2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 159
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-direct {v0}, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;-><init>()V

    .line 160
    new-instance v1, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/QuoteSpan;-><init>(ZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    .line 161
    iput p1, v1, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    .line 162
    iput p2, v1, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    const/16 v3, 0x21

    .line 163
    invoke-interface {p0, v1, p1, p2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 164
    invoke-interface {p0, v0, p1, p2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const-string p1, "\ufeff"

    .line 166
    invoke-interface {p0, p2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 167
    invoke-interface {p0, p2, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v2
.end method

.method public static updateQuoteBlocks(Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;[Z)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p1

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 184
    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 190
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_3
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/QuoteSpan;

    move v3, v4

    .line 195
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_9

    .line 196
    aget-object v5, v2, v3

    iget-boolean v5, v5, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    .line 197
    new-instance v6, Lorg/telegram/ui/Components/QuoteSpan$Block;

    aget-object v7, v2, v3

    invoke-direct {v6, p0, v1, v7}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    .line 198
    iget-object v7, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v8, v7, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v8, :cond_6

    .line 199
    iget v7, v7, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    const/16 v8, 0xa

    if-eqz v7, :cond_4

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_4

    .line 200
    aget-object v5, v2, v3

    invoke-interface {v1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 201
    aget-object v5, v2, v3

    iget-object v5, v5, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 204
    :cond_4
    iget-object v7, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v7, v7, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v7, v9, :cond_6

    iget-object v7, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v7, v7, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_6

    .line 206
    iget-object v7, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v7, v7, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    .line 207
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-gt v7, v9, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v7, v9, :cond_5

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 208
    :cond_5
    aget-object v8, v2, v3

    invoke-interface {v1, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 209
    aget-object v8, v2, v3

    iget-object v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v1, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 210
    aget-object v8, v2, v3

    iget-object v9, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v9, v9, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    const/16 v10, 0x21

    invoke-interface {v1, v8, v9, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 211
    aget-object v8, v2, v3

    iget-object v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-interface {v1, v8, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    new-instance v6, Lorg/telegram/ui/Components/QuoteSpan$Block;

    aget-object v7, v2, v3

    invoke-direct {v6, p0, v1, v7}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    :cond_6
    if-nez p1, :cond_7

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :cond_7
    aget-object v7, v2, v3

    iget-boolean v7, v7, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    if-eq v7, v5, :cond_8

    if-eqz p2, :cond_8

    const/4 v5, 0x1

    .line 219
    aput-boolean v5, p2, v4

    .line 221
    :cond_8
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-object p1

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_b
    return-object p1
.end method

.method public static updateQuoteBlocksSpanned(Landroid/text/Layout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p1

    .line 233
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 234
    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_2

    goto :goto_1

    .line 240
    :cond_2
    check-cast v0, Landroid/text/Spanned;

    if-eqz p1, :cond_3

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 244
    :cond_3
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/QuoteSpan;

    .line 245
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_5

    .line 246
    aget-object v2, v1, v3

    iget-boolean v2, v2, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    .line 247
    new-instance v2, Lorg/telegram/ui/Components/QuoteSpan$Block;

    aget-object v4, v1, v3

    invoke-direct {v2, p0, v0, v4}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    if-nez p1, :cond_4

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object p1

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-object p1
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 82
    iget-boolean p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1
.end method

.method public setColor(I)V
    .locals 3

    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    if-eq v0, p1, :cond_0

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
