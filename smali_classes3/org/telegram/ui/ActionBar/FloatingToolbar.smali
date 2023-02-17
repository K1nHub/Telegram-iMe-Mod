.class public final Lorg/telegram/ui/ActionBar/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private currentStyle:I

.field private final mContentRect:Landroid/graphics/Rect;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mMenuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z

.field private final mWindowView:Landroid/view/View;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$NbZiCM1EM2S6HZEOEjuQ-wJRChQ(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->lambda$new$1(Landroid/view/MenuItem;Landroid/view/MenuItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UGQARNO28FBZ0TeffXeMTHJ8TdA(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->lambda$static$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget-object v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/ActionBar/FloatingToolbar$$ExternalSyntheticLambda0;

    sput-object v0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 83
    sget-object v0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWidthChanged:Z

    .line 93
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    .line 108
    sget-object v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ActionBar/FloatingToolbar$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    .line 113
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWindowView:Landroid/view/View;

    .line 114
    iput p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->currentStyle:I

    .line 115
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 116
    new-instance p3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ActionBar/FloatingToolbar;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;
    .locals 0

    .line 74
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/FloatingToolbar;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->currentStyle:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar;Ljava/lang/String;)I
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Landroid/view/View;Landroid/view/MenuItem;I)V
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 8

    .line 1252
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1253
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v2, 0x14

    .line 1254
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1255
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    .line 1256
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setElevation(F)V

    const/4 v2, 0x1

    .line 1257
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1258
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1259
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x0

    .line 1260
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v5, 0x6

    .line 1261
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v7, 0x8

    new-array v7, v7, [F

    int-to-float v6, v6

    aput v6, v7, v4

    aput v6, v7, v2

    aput v6, v7, p1

    const/4 v4, 0x3

    aput v6, v7, v4

    const/4 v4, 0x4

    aput v6, v7, v4

    const/4 v4, 0x5

    aput v6, v7, v4

    aput v6, v7, v5

    const/4 v4, 0x7

    aput v6, v7, v4

    .line 1262
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1263
    iget v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->currentStyle:I

    if-nez v4, :cond_0

    const-string p1, "dialogBackground"

    .line 1264
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    if-ne v4, p1, :cond_1

    const p1, -0x6ddddde

    .line 1266
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    const-string p1, "windowBackgroundWhite"

    .line 1268
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1270
    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 4

    .line 1293
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 1294
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 1295
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1294
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 4

    .line 1300
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 1301
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long p0, p1

    .line 1302
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1303
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;
    .locals 8

    .line 1193
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1194
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 1195
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x30

    .line 1196
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1197
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/16 v4, 0x10

    .line 1198
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v5, v1, v4, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 1200
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 1201
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 1202
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1203
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v5, "fonts/rmedium.ttf"

    .line 1204
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 1205
    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1206
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v5, 0x2

    .line 1207
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1208
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const-string v6, "listSelectorSDK21"

    .line 1209
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    .line 1210
    iget v7, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->currentStyle:I

    if-nez v7, :cond_0

    const-string p1, "dialogTextBlack"

    .line 1211
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    if-ne v7, v5, :cond_1

    const p1, -0x50506

    .line 1213
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x40ffffff    # 7.9999995f

    goto :goto_0

    :cond_1
    if-ne v7, p1, :cond_2

    const-string p1, "windowBackgroundWhiteBlackText"

    .line 1216
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    if-nez p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 1221
    :cond_3
    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_4
    :goto_1
    const/4 p1, 0x6

    if-eqz p4, :cond_5

    const/4 v5, 0x6

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz p5, :cond_6

    const/4 v7, 0x6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-eqz p5, :cond_7

    const/4 p5, 0x6

    goto :goto_4

    :cond_7
    const/4 p5, 0x0

    :goto_4
    if-eqz p4, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    .line 1219
    :goto_5
    invoke-static {v6, v5, v7, p5, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    const/16 p1, 0xb

    .line 1224
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v4, p1, v1, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1225
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-direct {p1, v2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_9

    .line 1227
    invoke-static {v0, p2, p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V

    :cond_9
    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 4

    .line 1282
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1283
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 1284
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1285
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1286
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private doShow()V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 189
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWidthChanged:Z

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 217
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 218
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 223
    :cond_0
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x1020041

    if-eq v3, v4, :cond_1

    .line 224
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 206
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 208
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method private static synthetic lambda$new$1(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 0

    .line 108
    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result p0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$static$0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private registerOrientationHandler()V
    .locals 2

    .line 232
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->unregisterOrientationHandler()V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWindowView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mWindowView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V
    .locals 1

    .line 1233
    check-cast p0, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 1234
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 1235
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1236
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 1237
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1239
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    :goto_0
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->unregisterOrientationHandler()V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lorg/telegram/ui/ActionBar/FloatingToolbar;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lorg/telegram/ui/ActionBar/FloatingToolbar;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lorg/telegram/ui/ActionBar/FloatingToolbar;
    .locals 0

    if-eqz p1, :cond_0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_0
    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/FloatingToolbar;
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->registerOrientationHandler()V

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->doShow()V

    return-object p0
.end method

.method public updateLayout()Lorg/telegram/ui/ActionBar/FloatingToolbar;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->doShow()V

    :cond_0
    return-object p0
.end method
