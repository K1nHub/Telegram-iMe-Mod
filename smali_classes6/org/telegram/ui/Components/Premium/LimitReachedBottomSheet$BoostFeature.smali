.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;
.super Ljava/lang/Object;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoostFeature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;
    }
.end annotation


# instance fields
.field public final countPlural:I

.field public final countValue:Ljava/lang/String;

.field public final iconResId:I

.field public final textKey:I

.field public final textKeyPlural:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->iconResId:I

    .line 203
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKey:I

    .line 204
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    .line 206
    iput p5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;ILorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;)V
    .locals 0

    .line 187
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static arraysEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    return v1

    .line 237
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    move v2, v1

    .line 238
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 239
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->equals(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public static of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;
    .locals 7

    .line 210
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public static of(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;
    .locals 7

    .line 214
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public static of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;
    .locals 7

    .line 218
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method


# virtual methods
.method public equals(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 225
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->iconResId:I

    iget v2, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->iconResId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKey:I

    iget v2, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKey:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    .line 228
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    .line 229
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
