.class public Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.super Landroid/widget/FrameLayout;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;
    }
.end annotation


# instance fields
.field private activeTextColorKey:Ljava/lang/String;

.field private adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

.field private additionalTabWidth:I

.field private allTabsWidth:I

.field private animatingIndicator:Z

.field private animatingIndicatorProgress:F

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationTime:F

.field private backgroundColorKey:Ljava/lang/String;

.field private counterPaint:Landroid/graphics/Paint;

.field private crossfadeAlpha:F

.field private crossfadeBitmap:Landroid/graphics/Bitmap;

.field private crossfadePaint:Landroid/graphics/Paint;

.field private currentPosition:I

.field private delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

.field private deletePaint:Landroid/graphics/Paint;

.field private editingAnimationProgress:F

.field private editingStartAnimationProgress:F

.field private hideProgress:F

.field private idToPosition:Landroid/util/SparseIntArray;

.field private ignoreLayout:Z

.field private indicatorProgress2:F

.field private interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private isEditing:Z

.field private isInHiddenMode:Z

.field private lastAnimationTime:J

.field lastDrawnIndicatorW:F

.field lastDrawnIndicatorX:F

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private manualScrollingToId:I

.field private manualScrollingToPosition:I

.field private orderChanged:Z

.field private positionToId:Landroid/util/SparseIntArray;

.field private positionToWidth:Landroid/util/SparseIntArray;

.field private positionToX:Landroid/util/SparseIntArray;

.field private prevLayoutWidth:I

.field private previousId:I

.field private previousPosition:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollingToChild:I

.field private selectedTabId:I

.field private selectorColorKey:Ljava/lang/String;

.field private selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private tabLineColorKey:Ljava/lang/String;

.field public tabMarginDp:I

.field private tabType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;",
            ">;"
        }
    .end annotation
.end field

.field tabsAnimator:Landroid/animation/ValueAnimator;

.field private textCounterPaint:Landroid/text/TextPaint;

.field private textPaint:Landroid/text/TextPaint;

.field private unactiveTextColorKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Rw-v8tK-WC2g36vcOMVqDYLpkIo(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$sd9S-ljbBaEZvlgDYYB-s16aydM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lambda$setIsEditing$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1217
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 829
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 898
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    .line 1111
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    .line 1112
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    .line 1113
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    .line 1114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->counterPaint:Landroid/graphics/Paint;

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    .line 1119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 1129
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    const/4 v0, -0x1

    .line 1141
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    .line 1148
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1149
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    .line 1151
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    const-string v2, "profile_tabSelectedLine"

    .line 1154
    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:Ljava/lang/String;

    const-string v2, "profile_tabSelectedText"

    .line 1155
    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->activeTextColorKey:Ljava/lang/String;

    const-string v2, "profile_tabText"

    .line 1156
    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->unactiveTextColorKey:Ljava/lang/String;

    const-string v2, "profile_tabSelector"

    .line 1157
    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorColorKey:Ljava/lang/String;

    const-string v2, "actionBarDefault"

    .line 1158
    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:Ljava/lang/String;

    .line 1167
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1169
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    .line 1170
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    .line 1171
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    .line 1172
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    .line 1179
    new-instance v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    .line 1218
    iput-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1220
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1221
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1222
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1223
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1224
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1225
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1226
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1228
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x40400000    # 3.0f

    .line 1229
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 1230
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    aput v2, v6, v1

    const/4 v8, 0x2

    aput v2, v6, v8

    const/4 v8, 0x3

    aput v2, v6, v8

    const/4 v2, 0x4

    const/4 v9, 0x0

    aput v9, v6, v2

    aput v9, v6, v3

    const/4 v2, 0x6

    aput v9, v6, v2

    const/4 v3, 0x7

    aput v9, v6, v3

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1231
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:Ljava/lang/String;

    invoke-static {v6, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1233
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 1234
    new-instance v4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_0

    .line 1269
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 1271
    :cond_0
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1274
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    if-ne p3, v8, :cond_1

    .line 1276
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    goto :goto_1

    .line 1278
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    .line 1280
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorColorKey:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1281
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$3;

    invoke-direct {p4, p0, p1, v7, v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;IZ)V

    iput-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1314
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p3, p4, v7, v2, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1315
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1316
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    .line 1317
    new-instance p3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    .line 1318
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1319
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1337
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V
    .locals 0

    .line 824
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->saveFromValues()V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 0

    .line 824
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->editingAnimationProgress:F

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousId:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->activeTextColorKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->unactiveTextColorKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    .line 824
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->editingStartAnimationProgress:F

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->counterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)J
    .locals 2

    .line 824
    iget-wide v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastAnimationTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    .line 824
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 0

    .line 824
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return p1
.end method

.method static synthetic access$3516(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 1

    .line 824
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/Runnable;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    .line 824
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/util/ArrayList;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 824
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    .line 824
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Z)Z
    .locals 0

    .line 824
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 0

    .line 1321
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    invoke-interface {p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->canPerformActions()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 1324
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;

    .line 1325
    iget p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p3, :cond_1

    .line 1326
    invoke-interface {p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onSamePageSelected()V

    return-void

    .line 1329
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    return-void
.end method

.method private static synthetic lambda$setIsEditing$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private saveFromValues()V
    .locals 0

    return-void
.end method

.method private scrollToChild(I)V
    .locals 1

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    if-eq v0, p1, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabsWidths()V
    .locals 7

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x7

    .line 1472
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1473
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1474
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result v4

    .line 1475
    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/String;)V
    .locals 3

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1435
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-ne v2, v1, :cond_0

    .line 1436
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    .line 1438
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1439
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-eq v2, v1, :cond_1

    if-ne v2, p1, :cond_1

    .line 1441
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1443
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;-><init>(ILjava/lang/String;)V

    .line 1444
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    const/4 p2, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTabWithIcon(ILjava/lang/String;I)V
    .locals 3

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 839
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-ne v2, v1, :cond_0

    .line 840
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    .line 842
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 843
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 844
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-eq v2, v1, :cond_1

    if-ne v2, p1, :cond_1

    .line 845
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 847
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;ILjava/lang/String;Lorg/telegram/ui/Components/ViewPagerFixed$1;)V

    .line 848
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1502(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 849
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    const/4 p2, 0x1

    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->getWidth(ZLandroid/text/TextPaint;)I

    move-result p2

    const/16 p3, 0x20

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1491
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1492
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, p4, :cond_b

    .line 1493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 1495
    iget-boolean p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_1

    const p4, 0x3dcccccd    # 0.1f

    add-float/2addr v2, p4

    .line 1496
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float p4, v2, v0

    if-lez p4, :cond_0

    .line 1498
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    .line 1500
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_3

    .line 1501
    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float v2, p4, v1

    if-eqz v2, :cond_3

    const v2, 0x3df5c28f    # 0.12f

    sub-float/2addr p4, v2

    .line 1502
    iput p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpg-float p4, p4, v1

    if-gez p4, :cond_2

    .line 1504
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    .line 1506
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1508
    :cond_3
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1511
    iget-boolean p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-nez p4, :cond_6

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    if-eq p4, v2, :cond_4

    goto :goto_1

    .line 1539
    :cond_4
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    invoke-virtual {p4, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 1541
    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;

    const/16 v2, 0x28

    .line 1542
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1543
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p4, v4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    add-float/2addr v2, p4

    float-to-int p4, v2

    goto/16 :goto_4

    :cond_5
    const/4 p4, 0x0

    goto :goto_4

    .line 1512
    :cond_6
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p4

    if-eq p4, v2, :cond_5

    .line 1514
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1518
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz v4, :cond_7

    .line 1519
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    .line 1520
    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    goto :goto_2

    .line 1522
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1523
    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1525
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1526
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1527
    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 1528
    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1529
    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    if-eqz v8, :cond_8

    int-to-float p4, v6

    sub-int/2addr v7, v6

    int-to-float v2, v7

    .line 1530
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v2, v2, v6

    add-float/2addr p4, v2

    float-to-int p4, p4

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr p4, v2

    goto :goto_3

    .line 1532
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    int-to-float v8, v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    .line 1533
    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v6, v6, v7

    add-float/2addr v8, v6

    float-to-int v6, v8

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr v6, p4

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p4, v6

    :goto_3
    int-to-float v2, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 1535
    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v4, v2

    :goto_4
    if-eqz v4, :cond_a

    int-to-float v2, p4

    .line 1547
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorX:F

    int-to-float v5, v4

    .line 1548
    iput v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorW:F

    .line 1549
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_9

    .line 1550
    invoke-static {v2, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    float-to-int p4, p4

    .line 1551
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorW:F

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    float-to-int v4, v0

    .line 1553
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, p4

    int-to-float p2, p2

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr p2, v6

    float-to-int p2, p2

    invoke-virtual {v0, p4, v5, v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1554
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1556
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_b

    .line 1557
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeAlpha:F

    mul-float p4, p4, v3

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1558
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeBitmap:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    return p3
.end method

.method public finishAddingTabs()V
    .locals 1

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getAnimatingIndicatorProgress()F
    .locals 1

    .line 1357
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    return v0
.end method

.method public getBackgroundColorKey()Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1349
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    return v0
.end method

.method public getCurrentTabId()I
    .locals 1

    .line 1462
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    return v0
.end method

.method public getFirstTabId()I
    .locals 2

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getPreviousPosition()I
    .locals 1

    .line 1353
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    return v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public hide(ZZ)V
    .locals 5

    .line 1785
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 1788
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_9

    .line 1789
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0xdc

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1792
    :cond_3
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_7

    .line 1793
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1794
    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1795
    :goto_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1796
    :goto_7
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 1798
    :goto_8
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    .line 1800
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isAnimatingIndicator()Z
    .locals 1

    .line 1345
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1611
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1613
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->prevLayoutWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_0

    .line 1614
    iput p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->prevLayoutWidth:I

    const/4 p1, -0x1

    .line 1615
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    .line 1616
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz p1, :cond_0

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1618
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    const/4 p1, 0x1

    .line 1619
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1620
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1621
    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1568
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1569
    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    .line 1570
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1571
    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    goto :goto_1

    .line 1573
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    if-ge v2, v0, :cond_1

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    .line 1575
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    if-eq v1, v0, :cond_2

    .line 1576
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1578
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    .line 1580
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->updateTabsWidths()V

    .line 1583
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public removeTabs()V
    .locals 1

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 1454
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1598
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTab(II)V
    .locals 5

    .line 1361
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    .line 1362
    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    .line 1363
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    .line 1364
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousId:I

    .line 1365
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1366
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 1369
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1371
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz p1, :cond_2

    .line 1372
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    :cond_2
    const/4 p1, 0x0

    .line 1375
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    .line 1376
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    .line 1377
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    .line 1378
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1381
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_3

    .line 1382
    invoke-interface {p1, p2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageSelected(IZ)V

    .line 1384
    :cond_3
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1385
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    .line 1386
    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1396
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1397
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1398
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$6;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public selectTab(IIF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v2, p3, v0

    if-lez v2, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1633
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1634
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    const/4 v2, -0x1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 1637
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1638
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    goto :goto_1

    .line 1640
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1641
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    .line 1643
    :goto_1
    iput p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    .line 1644
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1645
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1646
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    cmpl-float p1, p3, v0

    if-ltz p1, :cond_3

    .line 1649
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1650
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    .line 1651
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    .line 1654
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_4

    .line 1655
    invoke-interface {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->invalidateBlur()V

    :cond_4
    return-void
.end method

.method public selectTabWithId(IF)V
    .locals 5

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v4, p2, v2

    if-lez v4, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    .line 1671
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1672
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    goto :goto_1

    .line 1674
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1675
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    .line 1677
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    .line 1678
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1680
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_4

    .line 1683
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    .line 1684
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    .line 1685
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    .line 1686
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    :cond_4
    return-void
.end method

.method public setAnimationIdicatorProgress(F)V
    .locals 1

    .line 1413
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz v0, :cond_0

    .line 1417
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:Ljava/lang/String;

    .line 855
    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->activeTextColorKey:Ljava/lang/String;

    .line 856
    iput-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->unactiveTextColorKey:Ljava/lang/String;

    .line 857
    iput-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorColorKey:Ljava/lang/String;

    .line 858
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 859
    iput-object p5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:Ljava/lang/String;

    .line 860
    invoke-static {p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    return-void
.end method

.method public setIsEditing(Z)V
    .locals 6

    .line 1724
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1727
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1728
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->orderChanged:Z

    if-eqz p1, :cond_1

    .line 1729
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    .line 1730
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 1731
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1733
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1734
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1736
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1739
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->orderChanged:Z

    :cond_1
    return-void
.end method

.method public setTabType(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1590
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
