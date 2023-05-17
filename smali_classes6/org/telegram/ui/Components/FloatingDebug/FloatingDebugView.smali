.class public Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;
.super Landroid/widget/FrameLayout;
.source "FloatingDebugView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;
    }
.end annotation


# instance fields
.field private bigLayout:Landroid/widget/LinearLayout;

.field private debugItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation
.end field

.field private fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private floatingButtonBackground:Landroid/graphics/drawable/Drawable;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private inLongPress:Z

.field private isBigMenuShown:Z

.field private isFromFling:Z

.field private isScrollDisallowed:Z

.field private isScrolling:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private onLongPress:Ljava/lang/Runnable;

.field private titleView:Landroid/widget/TextView;

.field private touchSlop:I

.field private wasStatusBar:I


# direct methods
.method public static synthetic $r8$lambda$5045NsasZHCVubeGdBjGRUHUBtk(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showBigMenu$3(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JjN16uJd-HfjWCK0zyHFjFgKdA(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showBigMenu$2(FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Z188-KpBVq8NBzg2sApuZK_wZc(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showFab$8(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$NCwsqPriol4dX18rzcph5TYS0J8(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UmD1ybYWuoH4S57W-dVPcCLHi48()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$WHujEbmhskWZKfHUEubrxJFXoIA(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$5(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$crUGwUHHZheG5wlvLxau3jQ1pOk(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dBbNmaci7uE_ru68hxdVbNiajZA(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$nMq7iNm1GK6Bd16KFTefZoAAwTY(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->onLongPress:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    .line 92
    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$1;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, "floating_debug"

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    .line 158
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->touchSlop:I

    .line 159
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 160
    invoke-virtual {v0, v1}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    .line 161
    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;Landroidx/core/view/GestureDetectorCompat;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 203
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 204
    sget v2, Lorg/telegram/messenger/R$drawable;->device_phone_android:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 206
    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x38

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 215
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v5, 0x13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 222
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->updateDrawables()V

    .line 303
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 304
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->touchSlop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrolling:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrolling:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isFromFling:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isFromFling:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->onLongPress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrollDisallowed:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrollDisallowed:Z

    return p1
.end method

.method private clampX(Landroid/util/DisplayMetrics;F)F
    .locals 2

    const/16 v0, 0x10

    .line 529
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p2, v0, p1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private clampY(Landroid/util/DisplayMetrics;F)F
    .locals 2

    const/16 v0, 0x10

    .line 533
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p2, v0, p1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private getBuiltInDebugItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget v2, Lorg/telegram/messenger/R$string;->DebugGeneral:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 488
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuDisableWebViewDebug:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuEnableWebViewDebug:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Switch to day theme"

    goto :goto_1

    :cond_2
    const-string v2, "Switch to dark theme"

    :goto_1
    sget-object v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic lambda$getBuiltInDebugItems$4()V
    .locals 3

    .line 489
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    .line 490
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$getBuiltInDebugItems$5(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 4

    .line 521
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    const/4 v3, 0x0

    aput-object v3, v2, p0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x3

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getBuiltInDebugItems$6()V
    .locals 6

    .line 496
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v2, "Blue"

    .line 497
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    const-string v3, "lastDarkTheme"

    const-string v4, "Dark Blue"

    .line 501
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v4

    .line 505
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 507
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Night"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v4, v0

    goto :goto_0

    :cond_5
    move-object v4, v0

    :cond_6
    move-object v2, v1

    .line 514
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-nez v0, :cond_7

    .line 515
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_1

    .line 517
    :cond_7
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 520
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$getBuiltInDebugItems$7()V
    .locals 2

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->sendLogs(Landroid/app/Activity;Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 0

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    .line 292
    iget-object p1, p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->action:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 294
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->showBigMenu(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showBigMenu$2(FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p5, p4

    .line 437
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 438
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/16 p6, 0x8

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 439
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    sub-float p6, p2, p6

    invoke-static {p6, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p6

    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 441
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p6

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 442
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 443
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p4

    const/high16 p6, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    .line 444
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, p6, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 446
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    if-eqz p4, :cond_1

    .line 447
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, p6, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 450
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {p1, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p4, v0

    invoke-static {p2, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sub-float/2addr p6, p5

    invoke-virtual {p1, p6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 454
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 455
    iget p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->wasStatusBar:I

    const/high16 p2, 0x7a000000

    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 458
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showBigMenu$3(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 461
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 462
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    if-nez p3, :cond_0

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showFab$8(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 p3, 0x1c

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateDrawables()V
    .locals 6

    const/16 v0, 0x38

    .line 332
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 334
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 335
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 336
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 338
    iput-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 357
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_0

    .line 358
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->updateDrawables()V

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 0

    .line 571
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    if-ne p2, v0, :cond_0

    const/high16 v1, 0x42f40000    # 122.0f

    .line 310
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 312
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "x"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "y"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 369
    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    cmpl-float v5, v0, v2

    const/high16 v6, 0x4f000000

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x31000000

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v3, v6}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3, v6}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result v1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 372
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 373
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44228000    # 650.0f

    .line 374
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v3, 0x3f400000    # 0.75f

    .line 375
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 376
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 377
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 378
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 381
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 316
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->showBigMenu(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 477
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/high16 v1, 0x4f000000

    goto :goto_0

    :cond_0
    const/high16 v1, -0x31000000

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 386
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 391
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 538
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 545
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    .line 544
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 351
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    return p1
.end method

.method public saveConfig()V
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 326
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 327
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showBigMenu(Z)V
    .locals 8

    .line 396
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 399
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    if-eqz p1, :cond_4

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 407
    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getRightActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 411
    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 415
    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->getBuiltInDebugItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 423
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 424
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 425
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->wasStatusBar:I

    .line 427
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    .line 428
    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 429
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v5, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_6

    move v7, v5

    goto :goto_0

    :cond_6
    move v7, v6

    :goto_0
    invoke-direct {v4, v7}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4, v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v7, 0x44610000    # 900.0f

    .line 431
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    .line 432
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    if-eqz p1, :cond_7

    move v5, v6

    .line 433
    :cond_7
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 430
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, v2, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFLandroid/view/Window;)V

    .line 434
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFZ)V

    .line 460
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 468
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public showFab()V
    .locals 3

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 553
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x443b8000    # 750.0f

    .line 555
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    .line 556
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 554
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    .line 557
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 567
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
