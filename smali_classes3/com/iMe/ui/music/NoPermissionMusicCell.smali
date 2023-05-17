.class public final Lcom/iMe/ui/music/NoPermissionMusicCell;
.super Landroid/widget/LinearLayout;
.source "NoPermissionMusicCell.kt"


# instance fields
.field private final buttonDefaultColor:I

.field private final buttonPressedColor:I

.field private final buttonTextColor:I

.field private final iconCircleColor:I

.field private final iconColor:I

.field private final noPermissionImageView$delegate:Lkotlin/Lazy;

.field private final noPermissionSubtitle$delegate:Lkotlin/Lazy;

.field private final noPermissionTitle$delegate:Lkotlin/Lazy;

.field private final requestButton$delegate:Lkotlin/Lazy;

.field private final subtitleColor:I

.field private final titleColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionImageView$2;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionImageView$2;-><init>(Landroid/app/Activity;Lcom/iMe/ui/music/NoPermissionMusicCell;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionImageView$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionTitle$2;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionTitle$2;-><init>(Landroid/app/Activity;Lcom/iMe/ui/music/NoPermissionMusicCell;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionTitle$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;-><init>(Landroid/app/Activity;Lcom/iMe/ui/music/NoPermissionMusicCell;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionSubtitle$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/iMe/ui/music/NoPermissionMusicCell$requestButton$2;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/music/NoPermissionMusicCell$requestButton$2;-><init>(Landroid/app/Activity;Lcom/iMe/ui/music/NoPermissionMusicCell;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->requestButton$delegate:Lkotlin/Lazy;

    .line 70
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconColor:I

    .line 71
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconCircleColor:I

    .line 72
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->titleColor:I

    .line 73
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->subtitleColor:I

    .line 74
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonTextColor:I

    .line 75
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonDefaultColor:I

    .line 76
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    iput p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonPressedColor:I

    const/16 p1, 0x11

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionTitle()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionSubtitle()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getRequestButton()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x2

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$getButtonDefaultColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonDefaultColor:I

    return p0
.end method

.method public static final synthetic access$getButtonPressedColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonPressedColor:I

    return p0
.end method

.method public static final synthetic access$getButtonTextColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonTextColor:I

    return p0
.end method

.method public static final synthetic access$getIconCircleColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconCircleColor:I

    return p0
.end method

.method public static final synthetic access$getIconColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconColor:I

    return p0
.end method

.method public static final synthetic access$getSubtitleColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->subtitleColor:I

    return p0
.end method

.method public static final synthetic access$getTitleColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->titleColor:I

    return p0
.end method

.method private final getNoPermissionImageView()Landroid/widget/ImageView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNoPermissionSubtitle()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionSubtitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getNoPermissionTitle()Landroid/widget/TextView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->noPermissionTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRequestButton()Landroid/widget/TextView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/music/NoPermissionMusicCell;->requestButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final getThemeDescriptions()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 88
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionImageView()Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    iget v9, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 89
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionImageView()Landroid/widget/ImageView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    iget v3, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->iconCircleColor:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    move/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionTitle()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    iget v11, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->titleColor:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getNoPermissionSubtitle()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    iget v11, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->subtitleColor:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getRequestButton()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    iget v11, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonTextColor:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getRequestButton()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    iget v11, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonDefaultColor:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 94
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/music/NoPermissionMusicCell;->getRequestButton()Landroid/widget/TextView;

    move-result-object v5

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v6, v3, v4

    iget v11, v0, Lcom/iMe/ui/music/NoPermissionMusicCell;->buttonPressedColor:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 87
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
