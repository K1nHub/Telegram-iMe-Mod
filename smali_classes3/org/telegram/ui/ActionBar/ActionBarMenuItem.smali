.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.super Landroid/widget/FrameLayout;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    }
.end annotation


# instance fields
.field private additionalXOffset:I

.field private additionalYOffset:I

.field private allowCloseAnimation:Z

.field private animateClear:Z

.field private animationEnabled:Z

.field private clearButton:Landroid/widget/ImageView;

.field private clearButtonAnimator:Landroid/animation/AnimatorSet;

.field private currentSearchFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

.field private fixBackground:Z

.field private forceSmoothKeyboard:Z

.field protected iconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private ignoreOnTextChange:Z

.field private isSearchField:Z

.field private layoutInScreen:Z

.field protected listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

.field private location:[I

.field private longClickEnabled:Z

.field private notificationIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field protected overrideMenuClick:Z

.field private parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private processedPopupClick:Z

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAdditionalButton:Landroid/view/View;

.field private searchContainer:Landroid/widget/FrameLayout;

.field searchContainerAnimator:Landroid/animation/AnimatorSet;

.field private searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchFieldCaption:Landroid/widget/TextView;

.field private searchFieldHint:Ljava/lang/CharSequence;

.field private searchFieldText:Ljava/lang/CharSequence;

.field private searchFilterLayout:Landroid/widget/LinearLayout;

.field public searchItemPaddingStart:I

.field private selectedFilterIndex:I

.field private selectedMenuView:Landroid/view/View;

.field private showMenuRunnable:Ljava/lang/Runnable;

.field private showSubMenuFrom:Landroid/view/View;

.field private showSubmenuByMove:Z

.field private subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

.field private subMenuOpenSide:I

.field protected textView:Landroid/widget/TextView;

.field private transitionOffset:F

.field private wrapSearchInScrollView:Z

.field private wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

.field private yOffset:I


# direct methods
.method public static synthetic $r8$lambda$6DxaW1aF4PFC8ldHahV6RzqjZIk(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkClearButton$14(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7SqnDzO9VHSBmBKmcrO1AZhitHg(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$createPopupLayout$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8X-IeV3S7MOinJQY6-T53PHfIyw(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$createPopupLayout$2(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$97ELGBMVBlZJv0MzTuldUHOShYc(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$HFfVUfEsn-XXWesAu5m5-SUROA8(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSwipeBackItem$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_z5i1ADj_D5WDzBIX74KaQ_jmIQ(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkClearButton$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$awkl-VS2ZoTyx9s_3quDivZUDY0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$toggleSubMenu$8(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$n22X5bNLpBHwCjJotCUxtg9pdpI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$5(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pc91zNLtL1tA08ShV6y4UV7Q1pA(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSwipeBackItem$7(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0IAnItoSv0SMfIKP4Efj5TIEEI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$toggleSubMenu$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$tFrdi6qx6e1Z1vUL7QJG1_iWZfo(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vRzVeScxMoljuD0Sybs6FG7Lal4(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkCreateSearchField$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w3Z9yTuw71093zi3XLPRX4ZNaZs(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$onFiltersChanged$10(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xHyQitwTpGTIFvnMx_V9vXbkbxI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkCreateSearchField$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yVGxTnUwvFt1XKPgBU1elsrSPz0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "key_sheet_other"

    .line 95
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 253
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 257
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 261
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 91
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 1

    .line 265
    invoke-direct {p0, p1, p7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    const/4 p7, 0x1

    .line 225
    iput-boolean p7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    .line 229
    iput-boolean p7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    .line 235
    iput-boolean p7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    .line 238
    iput-boolean p7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 241
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->notificationIndex:I

    .line 266
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p3, :cond_1

    if-eqz p5, :cond_0

    const/4 p6, 0x5

    goto :goto_0

    :cond_0
    const/4 p6, 0x1

    .line 268
    :goto_0
    invoke-static {p3, p6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 p2, 0x2

    if-eqz p5, :cond_3

    .line 273
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/high16 p1, 0x41700000    # 15.0f

    .line 274
    invoke-virtual {p3, p7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const-string p3, "fonts/rmedium.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/4 p6, 0x0

    invoke-virtual {p1, p5, p6, p3, p6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    if-eqz p4, :cond_2

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/4 p2, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 284
    :cond_3
    new-instance p3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 285
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 287
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_4

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Ljava/util/ArrayList;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkClearButton()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)I
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->notificationIndex:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)I
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->notificationIndex:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;
    .locals 3

    .line 101
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "actionBarDefaultSubmenuSeparator"

    invoke-direct {v0, v1, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V

    .line 102
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const/4 p1, -0x1

    const/16 v1, 0x8

    .line 103
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method public static addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 2145
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    .line 2149
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move v2, p5

    move v3, p0

    move v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2150
    invoke-virtual {v6, p4, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/16 p0, 0xc4

    .line 2151
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 2152
    invoke-virtual {p2, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2153
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2154
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 2155
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p1, -0x1

    .line 2157
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 p1, 0x30

    .line 2158
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2159
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v6
.end method

.method private checkClearButton()V
    .locals 13

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1587
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-wide/16 v3, 0xb4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->forceShowClear()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1589
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1590
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1593
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1595
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    const/high16 v10, 0x42340000    # 45.0f

    if-eqz v0, :cond_3

    .line 1596
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1597
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v6, [F

    .line 1598
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1599
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1605
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    .line 1606
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    .line 1607
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v9

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    .line 1608
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v7, v9, [F

    aput v10, v7, v8

    .line 1609
    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v3, v2, v5

    .line 1605
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1612
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1620
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1622
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    goto/16 :goto_0

    .line 1624
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1629
    iput-boolean v9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    goto/16 :goto_0

    .line 1633
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 1636
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1638
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1639
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 1640
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1641
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v6, [F

    .line 1642
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1643
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1649
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v10, v12, v8

    .line 1650
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v9, [F

    aput v10, v12, v8

    .line 1651
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v9

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    aput v10, v12, v8

    .line 1652
    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v9, v9, [F

    aput v7, v9, v8

    .line 1653
    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v3, v2, v5

    .line 1649
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1656
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1662
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1664
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 1666
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1671
    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 1673
    :cond_7
    iput-boolean v9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    :cond_8
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkCreateSearchField()V
    .locals 13

    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    if-eqz v0, :cond_b

    .line 1222
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    .line 1317
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 v0, 0x0

    .line 1318
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    .line 1319
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 1320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    .line 1321
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    .line 1353
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    invoke-static {v5, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1355
    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setClipChildren(Z)V

    .line 1356
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    const/4 v10, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1359
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    add-int/lit8 v8, v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1363
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    .line 1364
    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const-string v6, "actionBarDefaultSearch"

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1371
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1414
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setScrollContainer(Z)V

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v4, "actionBarDefaultSearchPlaceholder"

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 1424
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v0, v4, :cond_4

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1444
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v4, 0x2000003

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v4, "chat_inTextSelectionHighlight"

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v4, "chat_TextSelectionCursor"

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1489
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1492
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 1493
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    .line 1497
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1499
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x30

    if-nez v0, :cond_8

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/high16 v7, 0x42100000    # 36.0f

    const/16 v8, 0x13

    const/4 v9, 0x0

    const/high16 v10, 0x40b00000    # 5.5f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, -0x1

    const/16 v7, 0x24

    const/16 v8, 0x10

    const/4 v9, 0x6

    const/4 v10, 0x0

    iget-boolean v11, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    const/16 v11, 0x30

    :goto_4
    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1504
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, -0x1

    const/16 v7, 0x24

    iget-boolean v11, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    const/16 v11, 0x30

    :goto_5
    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/high16 v7, 0x42100000    # 36.0f

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/high16 v10, 0x40b00000    # 5.5f

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1510
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$12;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    .line 1535
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v3, "ClearButton"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1568
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    const/16 v2, 0x15

    if-eqz v0, :cond_a

    .line 1569
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 1571
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    return-void
.end method

.method private createPopupLayout()V
    .locals 5

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 433
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    .line 434
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 435
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1983
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1984
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private hasRemovableFilters()Z
    .locals 3

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1684
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1685
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private synthetic lambda$addSubItem$3(Landroid/view/View;)V
    .locals 2

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 489
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSubItem$4(Landroid/view/View;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 530
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v1, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 533
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 535
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_3

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_4

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSubItem$5(ZLandroid/view/View;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 596
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 603
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_2

    .line 604
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_0

    .line 605
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz p1, :cond_3

    .line 606
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSwipeBackItem$6(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$addSwipeBackItem$7(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 634
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method

.method private synthetic lambda$checkClearButton$13(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1600
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    .line 1602
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkClearButton$14(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1644
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1645
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    .line 1646
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkCreateSearchField$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 1445
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 1446
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_2

    .line 1448
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchPressed(Landroid/widget/EditText;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$checkCreateSearchField$12(Landroid/view/View;)V
    .locals 2

    .line 1548
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1549
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1550
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1551
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    const/4 p1, 0x0

    .line 1552
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1557
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearSearchFilters()V

    goto :goto_1

    .line 1558
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1559
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1560
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_4

    .line 1561
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onCaptionCleared()V

    .line 1564
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1565
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createPopupLayout$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 436
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createPopupLayout$2(Landroid/view/KeyEvent;)V
    .locals 2

    .line 447
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFiltersChanged$10(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V
    .locals 1

    .line 1066
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1067
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-eq v0, p2, :cond_0

    .line 1068
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 1069
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz p2, :cond_2

    .line 1073
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->access$1900(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 1074
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setSelectedForDelete(Z)V

    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p1

    .line 1077
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1078
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p2, :cond_2

    .line 1079
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1080
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onTextChanged(Landroid/widget/EditText;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 2

    .line 322
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$toggleSubMenu$8(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 791
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 792
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$toggleSubMenu$9()V
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onDismiss()V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    if-eqz v0, :cond_0

    .line 800
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;->onHideSubMenu()V

    :cond_0
    return-void
.end method

.method private onFiltersChanged()V
    .locals 14

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 986
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 988
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 989
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 990
    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v6, 0x96

    .line 991
    invoke-virtual {v4, v6, v7}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 992
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 1021
    invoke-virtual {v8, v6, v7}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    move-result-object v6

    .line 992
    invoke-virtual {v3, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v6

    .line 1021
    invoke-virtual {v6, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1022
    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 1023
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 1024
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 1025
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    invoke-virtual {v3, v6}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 1051
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    const/4 v3, 0x0

    .line 1054
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1055
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1057
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1062
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1063
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1064
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1065
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1088
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1089
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-ne v2, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setExpanded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1092
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getX()F

    move-result v0

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1096
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1108
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkClearButton()V

    return-void
.end method

.method private updateOrShowPopup(ZZ)V
    .locals 8

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_2

    .line 1781
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v0

    .line 1782
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalYOffset:I

    goto :goto_0

    .line 1784
    :goto_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->yOffset:I

    add-int v5, v0, v1

    if-eqz p1, :cond_2

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollToTop()V

    .line 1789
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubMenuFrom:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, p0

    .line 1790
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v2, 0x8

    if-eqz v1, :cond_8

    .line 1791
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1792
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 1794
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_4
    if-eqz p2, :cond_e

    .line 1797
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 1801
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->forceSmoothKeyboard:Z

    if-eqz p1, :cond_6

    .line 1802
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v0, 0x33

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v3, v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 1804
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_7
    :goto_3
    if-eqz p2, :cond_e

    .line 1808
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v4, p2, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_4

    .line 1812
    :cond_8
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v0, :cond_a

    .line 1813
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1814
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_9
    if-eqz p2, :cond_e

    .line 1819
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    if-eqz p1, :cond_b

    .line 1824
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_b
    if-eqz p2, :cond_e

    .line 1827
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int v4, p2, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    .line 1831
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_d
    if-eqz p2, :cond_e

    .line 1834
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    :cond_e
    :goto_4
    return-void
.end method


# virtual methods
.method public addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;
    .locals 4

    .line 2137
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 2138
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v3, "actionBarDefaultSubmenuSeparator"

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V

    .line 2139
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 2140
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method public addDivider(I)Landroid/view/View;
    .locals 2

    .line 642
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 644
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 p1, 0xc4

    .line 646
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 648
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 649
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 650
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x3

    .line 651
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 652
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public addGap(I)Landroid/view/View;
    .locals 2

    .line 557
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 559
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xc4

    .line 560
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 562
    sget p1, Lorg/telegram/messenger/R$id;->object_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 565
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 566
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 v1, -0x1

    .line 568
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x6

    .line 569
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 570
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 969
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 971
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 4

    .line 499
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 500
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "actionBarDefaultSubmenuItem"

    .line 501
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 502
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x10

    if-nez v2, :cond_0

    .line 504
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    .line 506
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 508
    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    .line 509
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0xc4

    .line 510
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 511
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 512
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 516
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 517
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    .line 518
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    const/4 p2, -0x1

    .line 520
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 p2, 0x30

    .line 521
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 522
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 575
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    .line 579
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 581
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move v2, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 582
    invoke-virtual {v6, p4, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc4

    .line 583
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 586
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 587
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 588
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p2, -0x1

    .line 590
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 p2, 0x30

    .line 591
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 592
    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v6
.end method

.method public addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 545
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v7, p4

    .line 549
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v6, p4

    .line 553
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(ILandroid/view/View;II)V
    .locals 1

    .line 477
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 478
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 495
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 615
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 616
    invoke-virtual {v6, p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc4

    .line 617
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 618
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 620
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 621
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 622
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p2, -0x1

    .line 624
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 p2, 0x30

    .line 625
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 626
    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result p1

    .line 628
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    iput-object p2, v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 633
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda7;

    invoke-direct {p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    return-object v6
.end method

.method public checkHideMenuItem()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1856
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1857
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 1863
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1864
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public clearFocusOnSearchView()V
    .locals 1

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public clearSearchFilters()V
    .locals 2

    const/4 v0, 0x0

    .line 975
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 976
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public clearSearchText()V
    .locals 2

    const/4 v0, 0x0

    .line 1724
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 1728
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public closeSubMenu()V
    .locals 1

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public collapseSearchFilters()V
    .locals 1

    const/4 v0, -0x1

    .line 1973
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 1974
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->fixBackground:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dropPopupLayout()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-void
.end method

.method public forceUpdatePopupPosition()V
    .locals 4

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v0, 0x1

    .line 1772
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdditionalYOffset()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalYOffset:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method public getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 1

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    .line 710
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method public getSearchClearButton()Landroid/widget/ImageView;
    .locals 1

    .line 1932
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSearchContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 1194
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVisibleSubItemsCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1906
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1907
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1908
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideSubItem(I)V
    .locals 2

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 1844
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1845
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1846
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isSearchField()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    return v0
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubItemVisible(I)Z
    .locals 2

    .line 1880
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1883
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1884
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSubMenuShowing()Z
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1938
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    const-string v0, "android.widget.ImageButton"

    .line 1939
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1940
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, "android.widget.Button"

    .line 1941
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1942
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1750
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1752
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 1754
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_1

    .line 1755
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onLayout(IIII)V

    :cond_1
    return-void
.end method

.method public onSearchPressed()V
    .locals 2

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchPressed(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->longClickEnabled:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 321
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 327
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_9

    .line 330
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 335
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return v3

    .line 338
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v1, v1, v4

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v5, v3

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 342
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 343
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v5, v4

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 344
    aget v5, v5, v3

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 345
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    const/4 v2, 0x0

    .line 346
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 347
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 348
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 349
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 350
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_8

    .line 351
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    float-to-int v7, v0

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    const/16 v7, 0x15

    if-nez v6, :cond_5

    .line 352
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 353
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 354
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v7, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 358
    :cond_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 359
    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    .line 360
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_7

    if-ne v6, v7, :cond_6

    .line 361
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 362
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 364
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 366
    :cond_7
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 373
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_a

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_2

    .line 376
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_b

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    .line 379
    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    goto :goto_3

    .line 380
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_e

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto :goto_3

    .line 384
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 385
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 386
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    .line 389
    :cond_e
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openSearch(Z)V
    .locals 1

    .line 822
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public redrawPopup(I)V
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getBackgroundColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeAllSubItems()V
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 956
    iget-boolean v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 960
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 961
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 963
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    return-void
.end method

.method public requestFocusOnSearchView()V
    .locals 1

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1732
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    return-object p0
.end method

.method public setAdditionalXOffset(I)V
    .locals 0

    .line 1764
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    return-void
.end method

.method public setAdditionalYOffset(I)V
    .locals 0

    .line 1760
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalYOffset:I

    return-void
.end method

.method public setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1737
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    return-object p0
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-void
.end method

.method public setFitSubItems(Z)V
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    return-void
.end method

.method public setFixBackground(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->fixBackground:Z

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setForceSmoothKeyboard(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->forceSmoothKeyboard:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1149
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 1152
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 1134
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 1136
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 3

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    .line 406
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 412
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1204
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setIsSearchField(ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    return-object p0

    .line 1215
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    .line 1216
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    return-object p0
.end method

.method public setLayoutInScreen(Z)V
    .locals 0

    .line 421
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    return-void
.end method

.method public setLongClickEnabled(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->longClickEnabled:Z

    return-void
.end method

.method public setMenuYOffset(I)V
    .locals 0

    .line 716
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->yOffset:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOverrideMenuClick(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1199
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    return-object p0
.end method

.method public setPopupAnimationEnabled(Z)V
    .locals 1

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1745
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    return-void
.end method

.method public setPopupItemsColor(IZ)V
    .locals 5

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 671
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 672
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 673
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 674
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 675
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    .line 677
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    goto :goto_1

    .line 679
    :cond_2
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setPopupItemsSelectorColor(I)V
    .locals 5

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 690
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 691
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 692
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_1

    .line 693
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSearchAdditionalButton(Landroid/view/View;)V
    .locals 0

    .line 1208
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    return-void
.end method

.method public setSearchFieldCaption(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1707
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1710
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSearchFieldHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1167
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchFieldText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1176
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1180
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    .line 1181
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1183
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setSearchPaddingStart(I)V
    .locals 1

    .line 138
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setShowSearchProgress(Z)V
    .locals 1

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1697
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    goto :goto_0

    .line 1699
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    :goto_0
    return-void
.end method

.method public setShowSubmenuByMove(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    return-void
.end method

.method public setShowedFromBottom(Z)V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    return-void
.end method

.method public setSubItemVisible(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_0
    return-void
.end method

.method public setSubMenuDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    return-void
.end method

.method public setSubMenuOpenSide(I)V
    .locals 0

    .line 417
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTransitionOffset(F)V
    .locals 0

    .line 1978
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->transitionOffset:F

    const/4 p1, 0x0

    .line 1979
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 296
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->transitionOffset:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setupPopupRadialSelectors(I)V
    .locals 1

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    :cond_0
    return-void
.end method

.method public showSubItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1888
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(IZ)V

    return-void
.end method

.method public showSubItem(IZ)V
    .locals 2

    .line 1892
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez p2, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1897
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1898
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p2, 0x0

    .line 1899
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public toggleSearch(Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 840
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onPreToggleSearch()V

    .line 844
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->canToggleSearch()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 847
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 848
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->getCustomToggleTransition()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 850
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return v3

    .line 854
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 855
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 856
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 857
    instance-of v6, v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v6, :cond_4

    .line 859
    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 860
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/smedialink/common/IdFabric$Menu;->OPTIONS:I

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 864
    :cond_3
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 866
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 871
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x96

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_c

    .line 872
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 873
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_6

    .line 874
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 875
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 877
    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v3, [Landroid/animation/Animator;

    .line 878
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v8, [F

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v14

    aput v14, v13, v2

    aput v9, v13, v3

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v4, 0x0

    .line 879
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 880
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setAlpha(F)V

    .line 881
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v11, v3, [Landroid/animation/Animator;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v8, [F

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v14, v2

    aput v7, v14, v3

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 883
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 884
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 896
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 897
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 898
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 899
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 900
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v3, :cond_8

    .line 902
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 908
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_a

    .line 909
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchCollapse()V

    :cond_a
    if-eqz p1, :cond_b

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 914
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return v2

    .line 918
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 919
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 920
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_d

    .line 921
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 922
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 924
    :cond_d
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v3, [Landroid/animation/Animator;

    .line 925
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v8, [F

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v14

    aput v14, v13, v2

    aput v7, v13, v3

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v10, v2

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v4, 0x0

    .line 926
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 927
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v3, [Landroid/animation/Animator;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v8, [F

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v2

    aput v9, v13, v3

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 929
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 930
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 939
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/16 v1, 0x8

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearSearchFilters()V

    .line 942
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p1, :cond_f

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 947
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_10

    .line 948
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchExpand()V

    .line 950
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return v3

    :cond_11
    :goto_5
    return v2
.end method

.method public toggleSubMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 818
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public toggleSubMenu(Landroid/view/View;Landroid/view/View;)V
    .locals 10

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSkipDrawMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 729
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 737
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubMenuFrom:Landroid/view/View;

    .line 739
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    if-eqz p2, :cond_4

    .line 740
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;->onShowSubMenu()V

    .line 742
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 743
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 745
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 747
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, p0, v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;Landroid/view/View;)V

    .line 759
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 761
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 762
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 763
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 764
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getBackgroundColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 766
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 767
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 768
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setTopView(Landroid/view/View;)V

    .line 773
    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p1, p2, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 774
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_7

    .line 775
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 777
    :cond_7
    sget v0, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 779
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    if-nez p1, :cond_8

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 782
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 783
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 784
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    if-eqz p1, :cond_9

    .line 785
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setLayoutInScreen(Z)V

    .line 787
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 789
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 790
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 805
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/16 v0, 0x28

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 808
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 809
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 810
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->updateRadialSelectors()V

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground(Z)V

    .line 815
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    :cond_c
    :goto_2
    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1950
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1951
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    if-eqz v2, :cond_0

    .line 1952
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->access$1800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1956
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_3

    .line 1957
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const-string v2, "dialogButtonSelector"

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1963
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_4

    const-string v1, "actionBarDefaultSearch"

    .line 1964
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, "actionBarDefaultSearchPlaceholder"

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "chat_inTextSelectionHighlight"

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "chat_TextSelectionCursor"

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    :cond_4
    return-void
.end method
