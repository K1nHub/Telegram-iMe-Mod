.class public Lorg/telegram/ui/ActionBar/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    }
.end annotation


# static fields
.field public static FLAG_AB_AM_BACKGROUND:I = 0x100000

.field public static FLAG_AB_AM_ITEMSCOLOR:I = 0x200

.field public static FLAG_AB_AM_SELECTORCOLOR:I = 0x400000

.field public static FLAG_AB_AM_TOPBACKGROUND:I = 0x200000

.field public static FLAG_AB_ITEMSCOLOR:I = 0x40

.field public static FLAG_AB_SEARCH:I = 0x8000000

.field public static FLAG_AB_SEARCHPLACEHOLDER:I = 0x4000000

.field public static FLAG_AB_SELECTORCOLOR:I = 0x100

.field public static FLAG_AB_SUBMENUBACKGROUND:I = -0x80000000

.field public static FLAG_AB_SUBMENUITEM:I = 0x40000000

.field public static FLAG_AB_SUBTITLECOLOR:I = 0x400

.field public static FLAG_AB_TITLECOLOR:I = 0x80

.field public static FLAG_BACKGROUND:I = 0x1

.field public static FLAG_BACKGROUNDFILTER:I = 0x20

.field public static FLAG_CELLBACKGROUNDCOLOR:I = 0x10

.field public static FLAG_CHECKBOX:I = 0x2000

.field public static FLAG_CHECKBOXCHECK:I = 0x4000

.field public static FLAG_CHECKTAG:I = 0x40000

.field public static FLAG_CURSORCOLOR:I = 0x1000000

.field public static FLAG_DRAWABLESELECTEDSTATE:I = 0x10000

.field public static FLAG_FASTSCROLL:I = 0x2000000

.field public static FLAG_HINTTEXTCOLOR:I = 0x800000

.field public static FLAG_IMAGECOLOR:I = 0x8

.field public static FLAG_LINKCOLOR:I = 0x2

.field public static FLAG_LISTGLOWCOLOR:I = 0x8000

.field public static FLAG_PROGRESSBAR:I = 0x800

.field public static FLAG_SECTIONS:I = 0x80000

.field public static FLAG_SELECTOR:I = 0x1000

.field public static FLAG_SELECTORWHITE:I = 0x10000000

.field public static FLAG_SERVICEBACKGROUND:I = 0x20000000

.field public static FLAG_TEXTCOLOR:I = 0x4

.field public static FLAG_USEBACKGROUNDDRAWABLE:I = 0x20000


# instance fields
.field private alphaOverride:I

.field private cachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private changeFlags:I

.field private currentColor:I

.field private currentKey:I

.field private delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

.field private drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

.field private listClasses:[Ljava/lang/Class;

.field private listClassesFieldName:[Ljava/lang/String;

.field private lottieLayerName:Ljava/lang/String;

.field private notFoundCachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private paintToUpdate:[Landroid/graphics/Paint;

.field private previousColor:I

.field private previousIsDefault:[Z

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private viewToInvalidate:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move v7, p4

    .line 78
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 125
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 154
    iput p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    if-eqz p4, :cond_0

    new-array p7, v0, [Landroid/graphics/Paint;

    const/4 v0, 0x0

    aput-object p4, p7, v0

    .line 156
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 158
    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 160
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 161
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 162
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 163
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_1

    .line 164
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, -0x1

    .line 117
    iput p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 p8, 0x1

    new-array p8, p8, [Z

    .line 125
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 141
    iput p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    .line 142
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 143
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 145
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 146
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 147
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 148
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 149
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 125
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 202
    iput p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    .line 203
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 205
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 206
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 207
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    .line 208
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 211
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 125
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 185
    iput p9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    .line 186
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 187
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 188
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 189
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 190
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 191
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    .line 192
    iput p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    .line 193
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 194
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 197
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V
    .locals 10

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 181
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 125
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 169
    iput p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    .line 170
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 173
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 174
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 175
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 176
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private checkTag(ILandroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 230
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 231
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private processViewColor(Landroid/view/View;I)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 520
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_49

    .line 521
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 524
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    goto/16 :goto_7

    .line 526
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 527
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_7

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 530
    iget v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_2

    .line 531
    instance-of v6, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v6, :cond_f

    .line 532
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 533
    instance-of v6, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_f

    .line 534
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto/16 :goto_6

    .line 538
    :cond_2
    instance-of v7, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v7, :cond_3

    .line 539
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 540
    :cond_3
    instance-of v7, v2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v7, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_6

    instance-of v7, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_6

    .line 541
    :cond_4
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_2

    :cond_5
    move v6, v0

    :goto_2
    invoke-static {v2, p2, v6}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 543
    :cond_6
    :goto_3
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    .line 546
    :cond_7
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    .line 547
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    .line 548
    :cond_8
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_c

    .line 549
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 550
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 551
    :cond_9
    instance-of v2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v2, :cond_f

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_f

    .line 553
    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_a

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_b

    .line 555
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 559
    :cond_c
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_d

    goto :goto_6

    .line 561
    :cond_d
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_e

    .line 562
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 563
    :cond_e
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_f

    .line 564
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_6
    move v2, v5

    .line 569
    :goto_7
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-eqz v6, :cond_47

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 571
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    if-eqz v7, :cond_10

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_12

    .line 575
    :cond_10
    :try_start_0
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    if-nez v7, :cond_11

    .line 577
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v7, v7, v1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 579
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 580
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz v7, :cond_48

    .line 584
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_48

    if-nez v2, :cond_12

    .line 586
    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_12

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v2, v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_12

    .line 589
    :cond_12
    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_13

    .line 590
    move-object v2, v8

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 592
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    if-eqz v2, :cond_14

    instance-of v2, v8, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v2, :cond_14

    .line 593
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".**"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 595
    :cond_14
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_15

    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_15

    .line 596
    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 599
    :cond_15
    instance-of v2, v8, Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v2, :cond_16

    .line 600
    check-cast v8, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 602
    :cond_16
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_18

    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_18

    .line 603
    check-cast v8, Landroid/view/View;

    .line 604
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 605
    instance-of v3, v2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    if-eqz v3, :cond_17

    .line 606
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 607
    check-cast v2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 609
    :cond_17
    invoke-virtual {v8, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 611
    :cond_18
    instance-of v9, v8, Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v9, :cond_1b

    .line 612
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    .line 613
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 614
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_12

    .line 615
    :cond_19
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 616
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto/16 :goto_12

    .line 618
    :cond_1a
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto/16 :goto_12

    .line 620
    :cond_1b
    instance-of v9, v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v9, :cond_1d

    .line 621
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 622
    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    goto/16 :goto_12

    .line 624
    :cond_1c
    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 626
    :cond_1d
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_22

    .line 627
    check-cast v8, Landroid/widget/TextView;

    .line 628
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1f

    .line 629
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_48

    move v3, v0

    .line 631
    :goto_8
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 632
    aget-object v4, v2, v3

    if-eqz v4, :cond_1e

    .line 633
    aget-object v4, v2, v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 637
    :cond_1f
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_20

    .line 638
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput p2, v2, Landroid/text/TextPaint;->linkColor:I

    .line 639
    invoke-virtual {v8}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_12

    .line 640
    :cond_20
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    .line 641
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 642
    instance-of v3, v2, Landroid/text/SpannedString;

    if-eqz v3, :cond_48

    .line 643
    move-object v3, v2

    check-cast v3, Landroid/text/SpannedString;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v3, v0, v2, v4}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v2, :cond_48

    .line 644
    array-length v3, v2

    if-lez v3, :cond_48

    move v3, v0

    .line 645
    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 646
    aget-object v4, v2, v3

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Components/TypefaceSpan;->setColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 651
    :cond_21
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 653
    :cond_22
    instance-of v9, v8, Landroid/widget/ImageView;

    if-eqz v9, :cond_25

    .line 654
    check-cast v8, Landroid/widget/ImageView;

    .line 655
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 656
    instance-of v3, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v3, :cond_24

    .line 657
    iget v3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_23

    .line 658
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 660
    :cond_23
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 663
    :cond_24
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 665
    :cond_25
    instance-of v9, v8, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v9, :cond_28

    .line 666
    check-cast v8, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 667
    instance-of v3, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v3, :cond_27

    .line 668
    iget v3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    .line 669
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 671
    :cond_26
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    :cond_27
    if-eqz v2, :cond_48

    .line 674
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 676
    :cond_28
    instance-of v9, v8, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_32

    .line 678
    instance-of v4, v8, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v4, :cond_29

    .line 679
    check-cast v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_12

    .line 681
    :cond_29
    instance-of v4, v8, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v4, :cond_2b

    .line 682
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2a

    .line 683
    check-cast v8, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 685
    :cond_2a
    check-cast v8, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setColor(I)V

    goto/16 :goto_12

    .line 687
    :cond_2b
    instance-of v4, v8, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v4, :cond_2d

    .line 688
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 689
    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 691
    :cond_2c
    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 693
    :cond_2d
    instance-of v4, v8, Landroid/graphics/drawable/StateListDrawable;

    if-nez v4, :cond_30

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_2e

    instance-of v3, v8, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_2e

    goto :goto_a

    .line 695
    :cond_2e
    instance-of v2, v8, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2f

    .line 696
    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_12

    .line 698
    :cond_2f
    check-cast v8, Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 694
    :cond_30
    :goto_a
    check-cast v8, Landroid/graphics/drawable/Drawable;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    goto :goto_b

    :cond_31
    move v5, v0

    :goto_b
    invoke-static {v8, p2, v5}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto/16 :goto_12

    .line 700
    :cond_32
    instance-of v3, v8, Lorg/telegram/ui/Components/CheckBox;

    if-eqz v3, :cond_34

    .line 701
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_33

    .line 702
    check-cast v8, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/CheckBox;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 703
    :cond_33
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    .line 704
    check-cast v8, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/CheckBox;->setCheckColor(I)V

    goto/16 :goto_12

    .line 706
    :cond_34
    instance-of v3, v8, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    if-eqz v3, :cond_35

    .line 707
    check-cast v8, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    goto/16 :goto_12

    .line 708
    :cond_35
    instance-of v3, v8, Ljava/lang/Integer;

    if-eqz v3, :cond_36

    .line 709
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 710
    :cond_36
    instance-of v3, v8, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v3, :cond_38

    .line 711
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_37

    .line 712
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setBackgroundColor(I)V

    .line 713
    check-cast v8, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 714
    :cond_37
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    .line 715
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setCheckedColor(I)V

    .line 716
    check-cast v8, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 718
    :cond_38
    instance-of v3, v8, Landroid/text/TextPaint;

    if-eqz v3, :cond_3a

    .line 719
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_39

    .line 720
    check-cast v8, Landroid/text/TextPaint;

    iput p2, v8, Landroid/text/TextPaint;->linkColor:I

    goto/16 :goto_12

    .line 722
    :cond_39
    check-cast v8, Landroid/text/TextPaint;

    invoke-virtual {v8, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_12

    .line 724
    :cond_3a
    instance-of v3, v8, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v3, :cond_3c

    .line 725
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3b

    .line 726
    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_12

    .line 728
    :cond_3b
    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_12

    .line 730
    :cond_3c
    instance-of v3, v8, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v3, :cond_3d

    .line 731
    check-cast v8, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    goto/16 :goto_12

    .line 732
    :cond_3d
    instance-of v3, v8, Landroid/graphics/Paint;

    if-eqz v3, :cond_3e

    .line 733
    check-cast v8, Landroid/graphics/Paint;

    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 735
    :cond_3e
    instance-of v3, v8, Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v3, :cond_40

    .line 736
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3f

    .line 737
    check-cast v8, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/SeekBarView;->setOuterColor(I)V

    goto/16 :goto_12

    .line 739
    :cond_3f
    check-cast v8, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/SeekBarView;->setInnerColor(I)V

    goto/16 :goto_12

    .line 741
    :cond_40
    instance-of v3, v8, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v3, :cond_48

    .line 742
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_43

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_48

    if-nez v2, :cond_41

    .line 744
    move-object v3, v8

    check-cast v3, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_d

    :cond_41
    move-object v3, v8

    check-cast v3, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_42

    .line 746
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 747
    instance-of v5, v3, Landroid/text/SpannedString;

    if-eqz v5, :cond_42

    .line 748
    move-object v5, v3

    check-cast v5, Landroid/text/SpannedString;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v5, v0, v3, v7}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v3, :cond_42

    .line 749
    array-length v5, v3

    if-lez v5, :cond_42

    move v5, v0

    .line 750
    :goto_e
    array-length v7, v3

    if-ge v5, v7, :cond_42

    .line 751
    aget-object v7, v3, v5

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/TypefaceSpan;->setColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 757
    :cond_43
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_48

    .line 758
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_44

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    move-object v3, v8

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_44
    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_48

    if-nez v2, :cond_45

    .line 760
    move-object v3, v8

    check-cast v3, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_10

    :cond_45
    move-object v3, v8

    check-cast v3, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_10
    if-eqz v3, :cond_46

    .line 762
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 763
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 764
    instance-of v5, v3, Landroid/text/SpannedString;

    if-eqz v5, :cond_46

    .line 765
    move-object v5, v3

    check-cast v5, Landroid/text/SpannedString;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v5, v0, v3, v7}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v3, :cond_46

    .line 766
    array-length v5, v3

    if-lez v5, :cond_46

    move v5, v0

    .line 767
    :goto_11
    array-length v7, v3

    if-ge v5, v7, :cond_46

    .line 768
    aget-object v7, v3, v5

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/TypefaceSpan;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_0
    move-exception v2

    .line 780
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 781
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 783
    :cond_47
    instance-of v2, p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v2, :cond_48

    .line 784
    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    :cond_48
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_49
    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .line 799
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return v0
.end method

.method public getCurrentKey()I
    .locals 1

    .line 791
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    return v0
.end method

.method public getSetColor()I
    .locals 2

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :goto_1
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 824
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ThemeColors;->getStringName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAnimatedColor(I)V
    .locals 2

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->setAnimatedColor(II)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatedColor(II)V

    :goto_0
    return-void
.end method

.method public setColor(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    return-void
.end method

.method public setColor(IZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 238
    iget p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->setColor(IIZ)V

    .line 240
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    .line 241
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    if-lez p2, :cond_1

    .line 242
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, p3, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 244
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    .line 245
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    array-length v1, v0

    if-ge p2, v1, :cond_3

    .line 246
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    aget-object v1, v0, p2

    instance-of v1, v1, Landroid/text/TextPaint;

    if-eqz v1, :cond_2

    .line 247
    aget-object v0, v0, p2

    check-cast v0, Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    goto :goto_1

    .line 249
    :cond_2
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 253
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d

    move p2, p3

    .line 254
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    if-ge p2, v1, :cond_d

    .line 255
    aget-object v1, v0, p2

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 258
    :cond_4
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_5

    .line 259
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    goto/16 :goto_3

    .line 260
    :cond_5
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/ScamDrawable;

    if-eqz v1, :cond_6

    .line 261
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    goto/16 :goto_3

    .line 262
    :cond_6
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_7

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 264
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    goto :goto_3

    .line 266
    :cond_7
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v1, :cond_9

    .line 267
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 268
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 270
    :cond_8
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 272
    :cond_9
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_a

    .line 273
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    goto :goto_3

    .line 274
    :cond_a
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    if-eqz v1, :cond_b

    .line 275
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->setColor(I)V

    goto :goto_3

    .line 277
    :cond_b
    aget-object v0, v0, p2

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_c
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    .line 281
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-eqz p2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v2, :cond_18

    .line 282
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-direct {p0, v2, p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 283
    :cond_e
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_10

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 285
    instance-of v2, p2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    if-eqz v2, :cond_f

    .line 286
    check-cast p2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    goto :goto_4

    .line 289
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    :cond_10
    :goto_4
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_18

    .line 293
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_11

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_18

    .line 295
    check-cast p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setErrorLineColor(I)V

    goto :goto_8

    .line 298
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 299
    instance-of v2, p2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_13

    .line 300
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 301
    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_5

    .line 303
    :cond_12
    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_13
    :goto_5
    if-eqz p2, :cond_18

    .line 307
    instance-of v2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_16

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_14

    instance-of v2, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_14

    goto :goto_6

    .line 309
    :cond_14
    instance-of v2, p2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_15

    .line 310
    check-cast p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 312
    :cond_15
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    .line 308
    :cond_16
    :goto_6
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    move v2, v1

    goto :goto_7

    :cond_17
    move v2, p3

    :goto_7
    invoke-static {p2, p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 319
    :cond_18
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_25

    .line 320
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 321
    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 323
    :cond_19
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1a

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 326
    :cond_1a
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1b

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 329
    :cond_1b
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1c

    .line 330
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 332
    :cond_1c
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1d

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 335
    :cond_1d
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1e

    .line 336
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 338
    :cond_1e
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1f

    .line 339
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 341
    :cond_1f
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_20

    .line 342
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 344
    :cond_20
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_21

    .line 345
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 347
    :cond_21
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_22

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 350
    :cond_22
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_24

    .line 351
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_23

    move p2, v1

    goto :goto_9

    :cond_23
    move p2, p3

    :goto_9
    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 353
    :cond_24
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_25

    .line 354
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 357
    :cond_25
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_27

    .line 358
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_26

    .line 359
    check-cast p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    goto :goto_a

    .line 360
    :cond_26
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 361
    check-cast p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    .line 364
    :cond_27
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v2, :cond_28

    .line 365
    check-cast p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    goto :goto_b

    .line 366
    :cond_28
    instance-of v2, p2, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2a

    .line 367
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    .line 368
    check-cast p2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto :goto_b

    .line 370
    :cond_29
    check-cast p2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto :goto_b

    .line 372
    :cond_2a
    instance-of v2, p2, Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v2, :cond_2b

    .line 373
    check-cast p2, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    goto :goto_b

    .line 374
    :cond_2b
    instance-of v2, p2, Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_2c

    .line 375
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 376
    check-cast p2, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SeekBarView;->setOuterColor(I)V

    .line 379
    :cond_2c
    :goto_b
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_31

    .line 380
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_2d

    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 381
    :cond_2d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_2e

    .line 382
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 383
    :cond_2e
    instance-of v2, p2, Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v2, :cond_2f

    .line 384
    check-cast p2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_c

    .line 385
    :cond_2f
    instance-of v2, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_30

    .line 386
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_c

    .line 387
    :cond_30
    instance-of v2, p2, Lorg/telegram/ui/Components/ChatBigEmptyView;

    if-eqz v2, :cond_31

    .line 388
    check-cast p2, Lorg/telegram/ui/Components/ChatBigEmptyView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setTextColor(I)V

    .line 392
    :cond_31
    :goto_c
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_32

    .line 393
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_32

    .line 394
    check-cast p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 397
    :cond_32
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_35

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_34

    .line 399
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_33

    .line 400
    check-cast v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    goto :goto_d

    .line 402
    :cond_33
    check-cast v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    goto :goto_d

    .line 404
    :cond_34
    instance-of p2, v2, Landroid/widget/EditText;

    if-eqz p2, :cond_35

    .line 405
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 408
    :cond_35
    :goto_d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 411
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3e

    .line 412
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-direct {p0, v2, p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(ILandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 413
    :cond_36
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3a

    .line 414
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_39

    .line 415
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 416
    instance-of v2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_37

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_3e

    instance-of v0, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3e

    .line 417
    :cond_37
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_38

    move v0, v1

    goto :goto_e

    :cond_38
    move v0, p3

    :goto_e
    invoke-static {p2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_10

    .line 420
    :cond_39
    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_10

    .line 422
    :cond_3a
    instance-of v0, p2, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_3b

    goto :goto_10

    .line 424
    :cond_3b
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3c

    .line 425
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 426
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setSideDrawablesColor(I)V

    goto :goto_10

    .line 427
    :cond_3c
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 428
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3e

    move v0, p3

    .line 430
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_3e

    .line 431
    aget-object v2, p2, v0

    if-eqz v2, :cond_3d

    .line 432
    aget-object v2, p2, v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 439
    :cond_3e
    :goto_10
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3f

    .line 440
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3f

    .line 441
    check-cast p2, Landroid/widget/ScrollView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 444
    :cond_3f
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_40

    .line 445
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_40

    .line 446
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 449
    :cond_40
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_46

    .line 450
    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView;

    .line 451
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_41

    .line 452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(Ljava/lang/Integer;)V

    .line 454
    :cond_41
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 455
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->updateFastScrollColors()V

    .line 457
    :cond_42
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_43

    .line 458
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 460
    :cond_43
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_49

    .line 461
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_44

    move v1, p3

    .line 463
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 467
    :cond_44
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getHeadersCache()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_45

    move v1, p3

    .line 469
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 470
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 473
    :cond_45
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 475
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    goto :goto_13

    :cond_46
    if-eqz p2, :cond_49

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_47

    array-length v0, v0

    if-nez v0, :cond_49

    .line 479
    :cond_47
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_48

    .line 480
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 481
    :cond_48
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_49

    .line 482
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    :cond_49
    :goto_13
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz p2, :cond_4e

    .line 486
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4c

    .line 487
    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView;

    .line 488
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 489
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    move v1, p3

    :goto_14
    if-ge v1, v0, :cond_4a

    .line 491
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 493
    :cond_4a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    move v1, p3

    :goto_15
    if-ge v1, v0, :cond_4b

    .line 495
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 497
    :cond_4b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    move v1, p3

    :goto_16
    if-ge v1, v0, :cond_4c

    .line 499
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 502
    :cond_4c
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4d

    .line 503
    check-cast p2, Landroid/view/ViewGroup;

    .line 504
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_17
    if-ge p3, v0, :cond_4d

    .line 506
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    .line 509
    :cond_4d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 511
    :cond_4e
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz p1, :cond_4f

    .line 512
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor()V

    .line 514
    :cond_4f
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz p1, :cond_50

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_50
    return-void
.end method

.method public setDefaultColor()V
    .locals 2

    .line 816
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    const/4 v1, 0x0

    .line 217
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-object v0
.end method

.method public setPreviousColor()V
    .locals 3

    .line 820
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public startEditing()V
    .locals 2

    .line 795
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return-void
.end method
