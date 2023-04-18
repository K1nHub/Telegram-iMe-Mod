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

.field private currentKey:Ljava/lang/String;

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

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 115
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 144
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    if-eqz p4, :cond_0

    new-array p7, v0, [Landroid/graphics/Paint;

    const/4 v0, 0x0

    aput-object p4, p7, v0

    .line 146
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 148
    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 150
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 151
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 152
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 153
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_1

    .line 154
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, -0x1

    .line 107
    iput p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 p8, 0x1

    new-array p8, p8, [Z

    .line 115
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 131
    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 133
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 135
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 136
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 137
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 138
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 139
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 115
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 192
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 193
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 195
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 196
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 197
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    .line 198
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 201
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 115
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 175
    iput-object p9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 176
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    .line 177
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 178
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 179
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 180
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 181
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    .line 182
    iput p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    .line 183
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    .line 184
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    .line 185
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 187
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
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

    move-object/from16 v9, p8

    .line 171
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 115
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    .line 159
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    .line 160
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    .line 162
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    .line 163
    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 164
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    .line 165
    instance-of p2, p1, Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p2, :cond_0

    .line 166
    check-cast p1, Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private checkTag(Ljava/lang/String;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 220
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 221
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private processViewColor(Landroid/view/View;I)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 510
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_49

    .line 511
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 514
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    goto/16 :goto_7

    .line 516
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_7

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 520
    iget v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_2

    .line 521
    instance-of v6, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v6, :cond_f

    .line 522
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 523
    instance-of v6, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_f

    .line 524
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto/16 :goto_6

    .line 528
    :cond_2
    instance-of v7, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v7, :cond_3

    .line 529
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 530
    :cond_3
    instance-of v7, v2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v7, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_6

    instance-of v7, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_6

    .line 531
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

    .line 533
    :cond_6
    :goto_3
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    .line 536
    :cond_7
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    .line 537
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    .line 538
    :cond_8
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_c

    .line 539
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 540
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 541
    :cond_9
    instance-of v2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v2, :cond_f

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_f

    .line 543
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

    .line 545
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 549
    :cond_c
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_d

    goto :goto_6

    .line 551
    :cond_d
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_e

    .line 552
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 553
    :cond_e
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_f

    .line 554
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_6
    move v2, v5

    .line 559
    :goto_7
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-eqz v6, :cond_47

    .line 560
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

    .line 561
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    if-eqz v7, :cond_10

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_12

    .line 565
    :cond_10
    :try_start_0
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    if-nez v7, :cond_11

    .line 567
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v7, v7, v1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 569
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 570
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz v7, :cond_48

    .line 574
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_48

    if-nez v2, :cond_12

    .line 576
    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v2, v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_12

    .line 579
    :cond_12
    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_13

    .line 580
    move-object v2, v8

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 582
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    if-eqz v2, :cond_14

    instance-of v2, v8, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v2, :cond_14

    .line 583
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

    .line 585
    :cond_14
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_15

    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_15

    .line 586
    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 589
    :cond_15
    instance-of v2, v8, Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v2, :cond_16

    .line 590
    check-cast v8, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 592
    :cond_16
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_18

    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_18

    .line 593
    check-cast v8, Landroid/view/View;

    .line 594
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 595
    instance-of v3, v2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    if-eqz v3, :cond_17

    .line 596
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 597
    check-cast v2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 599
    :cond_17
    invoke-virtual {v8, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 601
    :cond_18
    instance-of v9, v8, Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v9, :cond_1b

    .line 602
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    .line 603
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 604
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_12

    .line 605
    :cond_19
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 606
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto/16 :goto_12

    .line 608
    :cond_1a
    check-cast v8, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_12

    .line 610
    :cond_1b
    instance-of v9, v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v9, :cond_1d

    .line 611
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 612
    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    goto/16 :goto_12

    .line 614
    :cond_1c
    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 616
    :cond_1d
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_22

    .line 617
    check-cast v8, Landroid/widget/TextView;

    .line 618
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1f

    .line 619
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_48

    move v3, v0

    .line 621
    :goto_8
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 622
    aget-object v4, v2, v3

    if-eqz v4, :cond_1e

    .line 623
    aget-object v4, v2, v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 627
    :cond_1f
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_20

    .line 628
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput p2, v2, Landroid/text/TextPaint;->linkColor:I

    .line 629
    invoke-virtual {v8}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_12

    .line 630
    :cond_20
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    .line 631
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 632
    instance-of v3, v2, Landroid/text/SpannedString;

    if-eqz v3, :cond_48

    .line 633
    move-object v3, v2

    check-cast v3, Landroid/text/SpannedString;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v3, v0, v2, v4}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v2, :cond_48

    .line 634
    array-length v3, v2

    if-lez v3, :cond_48

    move v3, v0

    .line 635
    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 636
    aget-object v4, v2, v3

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Components/TypefaceSpan;->setColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 641
    :cond_21
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_12

    .line 643
    :cond_22
    instance-of v9, v8, Landroid/widget/ImageView;

    if-eqz v9, :cond_25

    .line 644
    check-cast v8, Landroid/widget/ImageView;

    .line 645
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 646
    instance-of v3, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v3, :cond_24

    .line 647
    iget v3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_23

    .line 648
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 650
    :cond_23
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 653
    :cond_24
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 655
    :cond_25
    instance-of v9, v8, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v9, :cond_28

    .line 656
    check-cast v8, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 657
    instance-of v3, v2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v3, :cond_27

    .line 658
    iget v3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    .line 659
    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 661
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

    .line 664
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 666
    :cond_28
    instance-of v9, v8, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_32

    .line 668
    instance-of v4, v8, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v4, :cond_29

    .line 669
    check-cast v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_12

    .line 671
    :cond_29
    instance-of v4, v8, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v4, :cond_2b

    .line 672
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2a

    .line 673
    check-cast v8, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 675
    :cond_2a
    check-cast v8, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setColor(I)V

    goto/16 :goto_12

    .line 677
    :cond_2b
    instance-of v4, v8, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v4, :cond_2d

    .line 678
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 679
    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 681
    :cond_2c
    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 683
    :cond_2d
    instance-of v4, v8, Landroid/graphics/drawable/StateListDrawable;

    if-nez v4, :cond_30

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_2e

    instance-of v3, v8, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_2e

    goto :goto_a

    .line 685
    :cond_2e
    instance-of v2, v8, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2f

    .line 686
    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_12

    .line 688
    :cond_2f
    check-cast v8, Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_12

    .line 684
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

    .line 690
    :cond_32
    instance-of v3, v8, Lorg/telegram/ui/Components/CheckBox;

    if-eqz v3, :cond_34

    .line 691
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_33

    .line 692
    check-cast v8, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/CheckBox;->setBackgroundColor(I)V

    goto/16 :goto_12

    .line 693
    :cond_33
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    .line 694
    check-cast v8, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/CheckBox;->setCheckColor(I)V

    goto/16 :goto_12

    .line 696
    :cond_34
    instance-of v3, v8, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    if-eqz v3, :cond_35

    .line 697
    check-cast v8, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    goto/16 :goto_12

    .line 698
    :cond_35
    instance-of v3, v8, Ljava/lang/Integer;

    if-eqz v3, :cond_36

    .line 699
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 700
    :cond_36
    instance-of v3, v8, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v3, :cond_38

    .line 701
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_37

    .line 702
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setBackgroundColor(I)V

    .line 703
    check-cast v8, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 704
    :cond_37
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    .line 705
    move-object v2, v8

    check-cast v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setCheckedColor(I)V

    .line 706
    check-cast v8, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 708
    :cond_38
    instance-of v3, v8, Landroid/text/TextPaint;

    if-eqz v3, :cond_3a

    .line 709
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_39

    .line 710
    check-cast v8, Landroid/text/TextPaint;

    iput p2, v8, Landroid/text/TextPaint;->linkColor:I

    goto/16 :goto_12

    .line 712
    :cond_39
    check-cast v8, Landroid/text/TextPaint;

    invoke-virtual {v8, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_12

    .line 714
    :cond_3a
    instance-of v3, v8, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v3, :cond_3c

    .line 715
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3b

    .line 716
    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_12

    .line 718
    :cond_3b
    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_12

    .line 720
    :cond_3c
    instance-of v3, v8, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v3, :cond_3d

    .line 721
    check-cast v8, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    goto/16 :goto_12

    .line 722
    :cond_3d
    instance-of v3, v8, Landroid/graphics/Paint;

    if-eqz v3, :cond_3e

    .line 723
    check-cast v8, Landroid/graphics/Paint;

    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 724
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_12

    .line 725
    :cond_3e
    instance-of v3, v8, Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v3, :cond_40

    .line 726
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3f

    .line 727
    check-cast v8, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/SeekBarView;->setOuterColor(I)V

    goto/16 :goto_12

    .line 729
    :cond_3f
    check-cast v8, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/SeekBarView;->setInnerColor(I)V

    goto/16 :goto_12

    .line 731
    :cond_40
    instance-of v3, v8, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v3, :cond_48

    .line 732
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_43

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_48

    if-nez v2, :cond_41

    .line 734
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

    .line 736
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 737
    instance-of v5, v3, Landroid/text/SpannedString;

    if-eqz v5, :cond_42

    .line 738
    move-object v5, v3

    check-cast v5, Landroid/text/SpannedString;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v5, v0, v3, v7}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v3, :cond_42

    .line 739
    array-length v5, v3

    if-lez v5, :cond_42

    move v5, v0

    .line 740
    :goto_e
    array-length v7, v3

    if-ge v5, v7, :cond_42

    .line 741
    aget-object v7, v3, v5

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/TypefaceSpan;->setColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 747
    :cond_43
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_48

    .line 748
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_44

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    move-object v3, v8

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_44
    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_48

    if-nez v2, :cond_45

    .line 750
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

    .line 752
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 754
    instance-of v5, v3, Landroid/text/SpannedString;

    if-eqz v5, :cond_46

    .line 755
    move-object v5, v3

    check-cast v5, Landroid/text/SpannedString;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v5, v0, v3, v7}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v3, :cond_46

    .line 756
    array-length v5, v3

    if-lez v5, :cond_46

    move v5, v0

    .line 757
    :goto_11
    array-length v7, v3

    if-ge v5, v7, :cond_46

    .line 758
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

    .line 770
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->notFoundCachedFields:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 773
    :cond_47
    instance-of v2, p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v2, :cond_48

    .line 774
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

    .line 789
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSetColor()I
    .locals 2

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimatedColor(I)V
    .locals 2

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->setAnimatedColor(Ljava/lang/String;I)V

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatedColor(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setColor(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    return-void
.end method

.method public setColor(IZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 228
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->setColor(Ljava/lang/String;IZ)V

    .line 230
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    .line 231
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->alphaOverride:I

    if-lez p2, :cond_1

    .line 232
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, p3, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 234
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    .line 235
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    array-length v1, v0

    if-ge p2, v1, :cond_3

    .line 236
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    aget-object v1, v0, p2

    instance-of v1, v1, Landroid/text/TextPaint;

    if-eqz v1, :cond_2

    .line 237
    aget-object v0, v0, p2

    check-cast v0, Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    goto :goto_1

    .line 239
    :cond_2
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 243
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d

    move p2, p3

    .line 244
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    if-ge p2, v1, :cond_d

    .line 245
    aget-object v1, v0, p2

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 248
    :cond_4
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_5

    .line 249
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    goto/16 :goto_3

    .line 250
    :cond_5
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/ScamDrawable;

    if-eqz v1, :cond_6

    .line 251
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    goto/16 :goto_3

    .line 252
    :cond_6
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_7

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->lottieLayerName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 254
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

    .line 256
    :cond_7
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v1, :cond_9

    .line 257
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 258
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 260
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

    .line 262
    :cond_9
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_a

    .line 263
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    goto :goto_3

    .line 264
    :cond_a
    aget-object v1, v0, p2

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    if-eqz v1, :cond_b

    .line 265
    aget-object v0, v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->setColor(I)V

    goto :goto_3

    .line 267
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

    .line 271
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-eqz p2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v2, :cond_18

    .line 272
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 273
    :cond_e
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_10

    .line 274
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 275
    instance-of v2, p2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    if-eqz v2, :cond_f

    .line 276
    check-cast p2, Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    goto :goto_4

    .line 279
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 282
    :cond_10
    :goto_4
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_18

    .line 283
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_11

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_18

    .line 285
    check-cast p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setErrorLineColor(I)V

    goto :goto_8

    .line 288
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 289
    instance-of v2, p2, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_13

    .line 290
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 291
    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_5

    .line 293
    :cond_12
    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_13
    :goto_5
    if-eqz p2, :cond_18

    .line 297
    instance-of v2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_16

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_14

    instance-of v2, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_14

    goto :goto_6

    .line 299
    :cond_14
    instance-of v2, p2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_15

    .line 300
    check-cast p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 302
    :cond_15
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    .line 298
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

    .line 309
    :cond_18
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_25

    .line 310
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 311
    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 313
    :cond_19
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1a

    .line 314
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 316
    :cond_1a
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1b

    .line 317
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 319
    :cond_1b
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1c

    .line 320
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 322
    :cond_1c
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1d

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 325
    :cond_1d
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1e

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 328
    :cond_1e
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_1f

    .line 329
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 331
    :cond_1f
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_20

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 334
    :cond_20
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_21

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 337
    :cond_21
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_22

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 340
    :cond_22
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_24

    .line 341
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

    .line 343
    :cond_24
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_25

    .line 344
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 347
    :cond_25
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_27

    .line 348
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_26

    .line 349
    check-cast p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    goto :goto_a

    .line 350
    :cond_26
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 351
    check-cast p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    .line 354
    :cond_27
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v2, :cond_28

    .line 355
    check-cast p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    goto :goto_b

    .line 356
    :cond_28
    instance-of v2, p2, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2a

    .line 357
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    .line 358
    check-cast p2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto :goto_b

    .line 360
    :cond_29
    check-cast p2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto :goto_b

    .line 362
    :cond_2a
    instance-of v2, p2, Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v2, :cond_2b

    .line 363
    check-cast p2, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    goto :goto_b

    .line 364
    :cond_2b
    instance-of v2, p2, Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_2c

    .line 365
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 366
    check-cast p2, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SeekBarView;->setOuterColor(I)V

    .line 369
    :cond_2c
    :goto_b
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_31

    .line 370
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 371
    :cond_2d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_2e

    .line 372
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 373
    :cond_2e
    instance-of v2, p2, Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v2, :cond_2f

    .line 374
    check-cast p2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_c

    .line 375
    :cond_2f
    instance-of v2, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_30

    .line 376
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_c

    .line 377
    :cond_30
    instance-of v2, p2, Lorg/telegram/ui/Components/ChatBigEmptyView;

    if-eqz v2, :cond_31

    .line 378
    check-cast p2, Lorg/telegram/ui/Components/ChatBigEmptyView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setTextColor(I)V

    .line 382
    :cond_31
    :goto_c
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_32

    .line 383
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_32

    .line 384
    check-cast p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 387
    :cond_32
    iget p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_35

    .line 388
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_34

    .line 389
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_33

    .line 390
    check-cast v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    goto :goto_d

    .line 392
    :cond_33
    check-cast v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    goto :goto_d

    .line 394
    :cond_34
    instance-of p2, v2, Landroid/widget/EditText;

    if-eqz p2, :cond_35

    .line 395
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 398
    :cond_35
    :goto_d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    .line 401
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3e

    .line 402
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->checkTag(Ljava/lang/String;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 403
    :cond_36
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v2, p2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3a

    .line 404
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_39

    .line 405
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 406
    instance-of v2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_37

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_3e

    instance-of v0, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3e

    .line 407
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

    .line 410
    :cond_39
    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_10

    .line 412
    :cond_3a
    instance-of v0, p2, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_3b

    goto :goto_10

    .line 414
    :cond_3b
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3c

    .line 415
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 416
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setSideDrawablesColor(I)V

    goto :goto_10

    .line 417
    :cond_3c
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 418
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3e

    move v0, p3

    .line 420
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_3e

    .line 421
    aget-object v2, p2, v0

    if-eqz v2, :cond_3d

    .line 422
    aget-object v2, p2, v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 429
    :cond_3e
    :goto_10
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3f

    .line 430
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3f

    .line 431
    check-cast p2, Landroid/widget/ScrollView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 434
    :cond_3f
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_40

    .line 435
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_40

    .line 436
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 439
    :cond_40
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_46

    .line 440
    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView;

    .line 441
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_41

    .line 442
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(I)V

    .line 444
    :cond_41
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 445
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->updateFastScrollColors()V

    .line 447
    :cond_42
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_43

    .line 448
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 450
    :cond_43
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_49

    .line 451
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_44

    move v1, p3

    .line 453
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 457
    :cond_44
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getHeadersCache()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_45

    move v1, p3

    .line 459
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 460
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 463
    :cond_45
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 465
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    goto :goto_13

    :cond_46
    if-eqz p2, :cond_49

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_47

    array-length v0, v0

    if-nez v0, :cond_49

    .line 469
    :cond_47
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_48

    .line 470
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 471
    :cond_48
    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_49

    .line 472
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_49
    :goto_13
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz p2, :cond_4e

    .line 476
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4c

    .line 477
    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView;

    .line 478
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 479
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    move v1, p3

    :goto_14
    if-ge v1, v0, :cond_4a

    .line 481
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 483
    :cond_4a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    move v1, p3

    :goto_15
    if-ge v1, v0, :cond_4b

    .line 485
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 487
    :cond_4b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    move v1, p3

    :goto_16
    if-ge v1, v0, :cond_4c

    .line 489
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 492
    :cond_4c
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4d

    .line 493
    check-cast p2, Landroid/view/ViewGroup;

    .line 494
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_17
    if-ge p3, v0, :cond_4d

    .line 496
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    .line 499
    :cond_4d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .line 501
    :cond_4e
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz p1, :cond_4f

    .line 502
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor()V

    .line 504
    :cond_4f
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz p1, :cond_50

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_50
    return-void
.end method

.method public setDefaultColor()V
    .locals 2

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-object v0
.end method

.method public setPreviousColor()V
    .locals 3

    .line 810
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public startEditing()V
    .locals 2

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return-void
.end method
