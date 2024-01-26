.class public Lorg/telegram/ui/Components/FilterTabsView;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;,
        Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;,
        Lorg/telegram/ui/Components/FilterTabsView$TabView;,
        Lorg/telegram/ui/Components/FilterTabsView$Tab;,
        Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;,
        Lorg/telegram/ui/Components/FilterTabsView$TabMode;
    }
.end annotation


# instance fields
.field private final COLORS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/FilterTabsView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private aActiveTextColorKey:I

.field private aBackgroundColorKey:I

.field private aTabLineColorKey:I

.field private aUnactiveTextColorKey:I

.field private activeTextColorKey:I

.field private adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

.field private additionalTabWidth:I

.field private allTabsWidth:I

.field private animatingIndicator:Z

.field private animatingIndicatorProgress:F

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationTime:F

.field private animationValue:F

.field private backgroundColorKey:I

.field private colorChangeAnimator:Landroid/animation/AnimatorSet;

.field private counterPaint:Landroid/graphics/Paint;

.field private currentPosition:I

.field private customMarginAndCount:I

.field private customMaxTabWidth:I

.field private customTabDefaultMargin:I

.field private delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

.field private deletePaint:Landroid/graphics/Paint;

.field private editingAnimationProgress:F

.field private editingForwardAnimation:Z

.field private editingStartAnimationProgress:F

.field private idToPosition:Landroid/util/SparseIntArray;

.field private ignoreLayout:Z

.field private interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidated:Z

.field private isEditing:Z

.field private isForwardToArchive:Z

.field itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastAnimationTime:J

.field private lastEditingAnimationTime:J

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final lineCornerRadiiForBottom:[F

.field private final lineCornerRadiiForTop:[F

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private lockDrawableColor:I

.field private manualScrollingToId:I

.field private manualScrollingToPosition:I

.field private final mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

.field private orderChanged:Z

.field private positionToId:Landroid/util/SparseIntArray;

.field private positionToStableId:Landroid/util/SparseIntArray;

.field private positionToWidth:Landroid/util/SparseIntArray;

.field private positionToX:Landroid/util/SparseIntArray;

.field private prevLayoutWidth:I

.field private previousId:I

.field private previousPosition:I

.field private scrollingToChild:I

.field private selectedTabId:I

.field private selectorColorKey:I

.field private selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private tabLineColorKey:I

.field private tabNoCounterMargin:I

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/FilterTabsView$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private textCounterPaint:Landroid/text/TextPaint;

.field private textPaint:Landroid/text/TextPaint;

.field private unactiveTextColorKey:I

.field private withBackground:Z


# direct methods
.method public static synthetic $r8$lambda$0gw0M2Mpnl7SUImCutpjvb1JvBw(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView;->lambda$setIsEditing$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nd_KldaJRbPp0IxOcXnDCt7d9ug(Lorg/telegram/ui/Components/FilterTabsView;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tg4WbgpqpdlY-7sMufmZKuUR9cw(Lorg/telegram/ui/Components/FilterTabsView;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/FilterTabsView;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/FilterTabsView$TabMode;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 7

    .line 1123
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 996
    new-instance p3, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    .line 997
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    .line 998
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    .line 999
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->counterPaint:Landroid/graphics/Paint;

    .line 1001
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 p3, -0x1

    .line 1022
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1029
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1030
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 1032
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1035
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    .line 1036
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    .line 1037
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    .line 1038
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    .line 1039
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    .line 1040
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    .line 1041
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    .line 1042
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    .line 1043
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    .line 1049
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1051
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    .line 1052
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    .line 1053
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    .line 1054
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    .line 1055
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    .line 1066
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterTabsView$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    .line 1095
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$2;

    const-string v3, "animationValue"

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Components/FilterTabsView$2;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->COLORS:Landroid/util/Property;

    .line 1125
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    .line 1126
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateCustomTabWidth()V

    .line 1127
    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne p2, v1, :cond_0

    .line 1128
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    .line 1129
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedSelector:I

    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateBackground()V

    .line 1133
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1134
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1135
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1136
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1137
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1138
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1139
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1141
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p2, 0x40400000    # 3.0f

    .line 1142
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    .line 1143
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    aput p2, v4, v0

    const/4 v6, 0x2

    aput p2, v4, v6

    const/4 v6, 0x3

    aput p2, v4, v6

    const/4 p2, 0x4

    const/4 v6, 0x0

    aput v6, v4, p2

    aput v6, v4, v2

    const/4 p2, 0x6

    aput v6, v4, p2

    const/4 v2, 0x7

    aput v6, v4, v2

    iput-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->lineCornerRadiiForTop:[F

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1145
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->reversedArray([F)[F

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lineCornerRadiiForBottom:[F

    .line 1146
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateLineCornerRadii()V

    .line 1148
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1150
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 1151
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$3;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1175
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1176
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterTabsView$4;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 1278
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1279
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1280
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 1281
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    .line 1282
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1283
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$5;

    invoke-direct {v1, p0, p1, v5, v5}, Lorg/telegram/ui/Components/FilterTabsView$5;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1322
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 1323
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1324
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p2, v1, v5, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1325
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1326
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    .line 1327
    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    .line 1328
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FilterTabsView$6;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1366
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$TabMode;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isNeedCounter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabNoCounterMargin:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/FilterTabsView;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationValue:F

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/FilterTabsView;F)F
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationValue:F

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isPointCounterMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->counterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isFilterTabsAtBottom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawableColor:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawableColor:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/FilterTabsView;)J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastAnimationTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/FilterTabsView;F)F
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    return p1
.end method

.method static synthetic access$3416(Lorg/telegram/ui/Components/FilterTabsView;F)F
    .locals 1

    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/Runnable;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isAllChatsTabEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isFoldersFirst()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    return p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/FilterTabsView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateTabsWidths()V

    return-void
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/FilterTabsView;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMarginAndCount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMaxTabWidth:I

    return p0
.end method

.method private findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 2

    const/4 v0, 0x0

    .line 1719
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1720
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz v1, :cond_0

    .line 1721
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAllChatsTabEnabled()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    .line 200
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCustomTabWidthMode()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->FORWARD:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 186
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget-object v1, Lcom/iMe/fork/enums/FilterTabWidthMode;->DEFAULT:Lcom/iMe/fork/enums/FilterTabWidthMode;

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isFilterTabsAtBottom()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    return v0
.end method

.method private isFoldersFirst()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    .line 207
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isNeedCounter()Z
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 179
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    sget-object v1, Lcom/iMe/fork/enums/FilterTabNotificationMode;->NUMBER:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isPointCounterMode()Z
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 193
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    sget-object v1, Lcom/iMe/fork/enums/FilterTabNotificationMode;->POINT:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 0

    .line 1332
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {p4}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->canPerformActions()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 1335
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1336
    iget-boolean p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-eqz p4, :cond_4

    .line 1338
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1339
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isAllChatsTabEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_3

    .line 1340
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMarginAndCount:I

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x6

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 1341
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4100(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p3

    if-gez p4, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4100(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p4, p2

    cmpl-float p2, p4, p3

    if-lez p2, :cond_3

    .line 1342
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onDeletePressed(I)V

    :cond_3
    return-void

    .line 1347
    :cond_4
    iget p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-ne p2, p3, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p3, :cond_5

    .line 1348
    invoke-interface {p3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onSamePageSelected()V

    return-void

    .line 1351
    :cond_5
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 4

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->canPerformActions()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->didSelectTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;Z)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1357
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method private static synthetic lambda$setIsEditing$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private notifySwipeProgressChanged()V
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz v0, :cond_0

    .line 166
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onSwipeProgressChanged(F)V

    :cond_0
    return-void
.end method

.method private scrollToChild(I)V
    .locals 1

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    if-eq v0, p1, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1739
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabsWidths()V
    .locals 7

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x7

    .line 1560
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1561
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1562
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v4

    .line 1563
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1564
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1565
    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x20

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1566
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addSortingTabs(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/fork/models/SortingTabState;

    invoke-virtual {v2}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/iMe/fork/enums/SortingFilter;->generateIdWithExtra()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 149
    invoke-virtual {v2}, Lcom/iMe/fork/enums/SortingFilter;->getDefaultIconResId()I

    move-result v9

    invoke-virtual {v2}, Lcom/iMe/fork/enums/SortingFilter;->getFilledIconResId()I

    move-result v10

    const-string v6, ""

    move-object v3, p0

    move v4, v5

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/Components/FilterTabsView;->addTab(IILjava/lang/String;ZZII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addTab(IILjava/lang/String;ZZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 100
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/FilterTabsView;->addTab(IILjava/lang/String;ZZII)V

    return-void
.end method

.method public addTab(IILjava/lang/String;ZZII)V
    .locals 3

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1476
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-ne v2, v1, :cond_0

    .line 1477
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1479
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-eq p2, v1, :cond_1

    if-ne p2, p1, :cond_1

    .line 1483
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 1486
    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, p7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    invoke-direct {p2, p0, p1, p3, p6}, Lorg/telegram/ui/Components/FilterTabsView$Tab;-><init>(Lorg/telegram/ui/Components/FilterTabsView;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;-><init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/String;)V

    .line 1487
    :goto_0
    iput-boolean p4, p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    .line 1488
    iput-boolean p5, p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    .line 1489
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    const/16 p4, 0x20

    :goto_1
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    const/4 p3, 0x0

    .line 1490
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateColorsTo(IIIII)V
    .locals 1

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1514
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    .line 1515
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    .line 1516
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    .line 1517
    iput p5, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    .line 1518
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    .line 1519
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1521
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    .line 1522
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->COLORS:Landroid/util/Property;

    const/4 p5, 0x2

    new-array p5, p5, [F

    fill-array-data p5, :array_0

    invoke-static {p0, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FilterTabsView$7;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public checkTabsCounter()V
    .locals 9

    .line 1868
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_7

    .line 1869
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1870
    iget v6, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v8, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v7, v8}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v7

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v7, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v6, v7}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_4

    .line 1874
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1875
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 1876
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_4

    .line 1877
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1878
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->requestLayout()V

    .line 1879
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1881
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1882
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    const-string v5, "FilterAllChats"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;)Z

    :cond_3
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1884
    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0x20

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1885
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1892
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method

.method public currentTabIsDefault()Z
    .locals 3

    .line 2158
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2162
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1573
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p2, p4, :cond_b

    .line 1574
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 1575
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v4, 0x437f0000    # 255.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {p4, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1578
    iget-boolean p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    const/4 v4, -0x1

    if-nez p4, :cond_5

    iget p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    if-eq p4, v4, :cond_0

    goto :goto_3

    .line 1610
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    invoke-virtual {p4, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 1612
    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1613
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMaxTabWidth:I

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x28

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4400(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F

    move-result v5

    iget v6, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v6, v2, v6

    mul-float/2addr v5, v6

    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4500(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4500(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I

    move-result v5

    int-to-float v5, v5

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1614
    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4600(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F

    move-result v5

    iget v6, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v6, v2, v6

    mul-float/2addr v5, v6

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    .line 1615
    :goto_2
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p4

    sub-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr p4, v5

    float-to-int p4, p4

    int-to-float p4, p4

    goto/16 :goto_6

    :cond_4
    move p4, v3

    move v4, p4

    goto/16 :goto_6

    .line 1579
    :cond_5
    :goto_3
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p4

    if-eq p4, v4, :cond_4

    .line 1581
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1585
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz v5, :cond_6

    .line 1586
    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    .line 1587
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    goto :goto_4

    .line 1589
    :cond_6
    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1590
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1592
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1593
    iget-object v8, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1594
    iget-object v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1595
    iget-object v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1596
    iget v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    const/16 v10, 0x10

    if-eqz v9, :cond_8

    int-to-float p4, v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    .line 1597
    iget v8, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    mul-float/2addr v7, v8

    add-float/2addr p4, v7

    float-to-int p4, p4

    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz v7, :cond_7

    div-int/lit8 v10, v7, 0x2

    :cond_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr p4, v7

    int-to-float p4, p4

    goto :goto_5

    .line 1599
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    int-to-float v9, v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    .line 1600
    iget v8, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    mul-float/2addr v7, v8

    add-float/2addr v9, v7

    float-to-int v7, v9

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr p4, v8

    sub-int/2addr v7, p4

    iget p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz p4, :cond_9

    div-int/lit8 v10, p4, 0x2

    :cond_9
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr v7, p4

    int-to-float p4, v7

    .line 1603
    :goto_5
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v4

    .line 1604
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p4, v4

    int-to-float v4, v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    .line 1606
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    :goto_6
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_b

    .line 1619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1620
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v5

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1621
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v7

    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1623
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isFilterTabsAtBottom()Z

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    if-eqz v5, :cond_a

    .line 1624
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    float-to-int v5, p4

    add-float/2addr p4, v4

    float-to-int p4, p4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v4

    invoke-virtual {p2, v5, v0, p4, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_7

    .line 1626
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    float-to-int v7, p4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v6

    sub-int v6, p2, v6

    add-float/2addr p4, v4

    float-to-int p4, p4

    invoke-virtual {v5, v7, v6, p4, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1627
    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1628
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1631
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v4, 0x11

    .line 1632
    iget-wide v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastEditingAnimationTime:J

    sub-long v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1633
    iput-wide p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastEditingAnimationTime:J

    .line 1635
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-nez p1, :cond_c

    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_13

    .line 1636
    :cond_c
    iget-boolean p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    const/high16 p4, 0x43d20000    # 420.0f

    if-eqz p2, :cond_f

    .line 1637
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpg-float v6, p2, v3

    if-gtz v6, :cond_d

    move v6, v1

    goto :goto_8

    :cond_d
    move v6, v0

    :goto_8
    long-to-float v7, v4

    div-float/2addr v7, p4

    add-float/2addr p2, v7

    .line 1638
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    if-nez p1, :cond_e

    if-eqz v6, :cond_e

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_e

    .line 1640
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1642
    :cond_e
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_12

    .line 1643
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1644
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    goto :goto_9

    .line 1647
    :cond_f
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float v6, p2, v3

    if-ltz v6, :cond_10

    move v0, v1

    :cond_10
    long-to-float v6, v4

    div-float/2addr v6, p4

    sub-float/2addr p2, v6

    .line 1648
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    if-nez p1, :cond_11

    if-eqz v0, :cond_11

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_11

    .line 1650
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1652
    :cond_11
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_12

    .line 1653
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1654
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    :cond_12
    :goto_9
    move v0, v1

    :cond_13
    const/high16 p2, 0x43340000    # 180.0f

    if-eqz p1, :cond_14

    .line 1660
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpg-float p4, p1, v2

    if-gez p4, :cond_15

    long-to-float p4, v4

    div-float/2addr p4, p2

    add-float/2addr p1, p4

    .line 1661
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_16

    .line 1663
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    goto :goto_a

    :cond_14
    if-nez p1, :cond_15

    .line 1668
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpl-float p4, p1, v3

    if-lez p4, :cond_15

    long-to-float p4, v4

    div-float/2addr p4, p2

    sub-float/2addr p1, p4

    .line 1669
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_16

    .line 1671
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    goto :goto_a

    :cond_15
    move v1, v0

    :cond_16
    :goto_a
    if-eqz v1, :cond_17

    .line 1677
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_17
    return p3
.end method

.method public finishAddingTabs(Z)V
    .locals 1

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1507
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    return v0
.end method

.method public getCurrentTabId()I
    .locals 1

    .line 1541
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return v0
.end method

.method public getCurrentTabStableId()I
    .locals 3

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getDefaultTabId()I
    .locals 1

    .line 2166
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2170
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return v0
.end method

.method public getFirstTabId()I
    .locals 2

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getNextPageId(Z)I
    .locals 3

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getSelectedTabAfterRemoveCurrent(Z)I
    .locals 2

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return p1

    .line 111
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->getFirstTabId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getSelectorColorKey()I
    .locals 1

    .line 1554
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    return v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getStableId(I)I
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getTab(I)Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 1499
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1502
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getTabsCount()I
    .locals 1

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasTab(I)Z
    .locals 2

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnimatingIndicator()Z
    .locals 1

    .line 1374
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return v0
.end method

.method public isEditing()Z
    .locals 1

    .line 1828
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFirstTab()Z
    .locals 1

    .line 1425
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstTabSelected()Z
    .locals 4

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2181
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1
.end method

.method public isLastTabSelected()Z
    .locals 5

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v0, v2, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method public isLocked(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2185
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2186
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v2, p1, :cond_0

    .line 2187
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isWithBackground()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->withBackground:Z

    return v0
.end method

.method public notifyTabCounterChanged(I)V
    .locals 6

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ltz p1, :cond_5

    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_2

    .line 1901
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1902
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v1

    if-gez v1, :cond_1

    goto/16 :goto_2

    .line 1905
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1906
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v1, 0x1

    .line 1907
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1908
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    if-eqz p1, :cond_5

    .line 1909
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1910
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->requestLayout()V

    .line 1911
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 1913
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1915
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1916
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    const-string v3, "FilterAllChats"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;)Z

    .line 1917
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1918
    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x20

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1919
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method protected onDefaultTabMoved()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1745
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1747
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->prevLayoutWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_0

    .line 1748
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->prevLayoutWidth:I

    const/4 p1, -0x1

    .line 1749
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1750
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz p1, :cond_0

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1752
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    const/4 p1, 0x1

    .line 1753
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1754
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1755
    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1685
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1686
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1687
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1690
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    :cond_0
    if-nez v1, :cond_1

    .line 1693
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 1697
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    const-string v4, "FilterAllChats"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;)Z

    .line 1698
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v5

    .line 1699
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    if-le v6, v0, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChatsShort:I

    const-string v4, "FilterAllChatsShort"

    :cond_2
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;)Z

    .line 1700
    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    sub-int/2addr v3, v5

    .line 1701
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v1

    add-int/2addr v3, v1

    .line 1702
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v3

    .line 1703
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    if-eq v1, v0, :cond_4

    const/4 v0, 0x1

    .line 1705
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1707
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1708
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1709
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1710
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    .line 1712
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateTabsWidths()V

    .line 1713
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1715
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public removeTabs()V
    .locals 1

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 1463
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1729
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1732
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public resetTabId()V
    .locals 1

    const/4 v0, -0x1

    .line 1471
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return-void
.end method

.method public scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V
    .locals 5

    .line 1382
    iget-boolean v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1383
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p2, :cond_0

    .line 1384
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V

    :cond_0
    return-void

    .line 1388
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v2, 0x1

    if-ge v0, p2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    .line 1389
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1390
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    .line 1391
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    .line 1392
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1393
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1395
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1397
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    :cond_3
    const/4 v0, 0x0

    .line 1400
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    .line 1401
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1402
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    .line 1403
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz v0, :cond_4

    .line 1408
    invoke-interface {v0, p1, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onTabSelected(I)V

    .line 1411
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->notifySwipeProgressChanged()V

    .line 1414
    :cond_4
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToChild(I)V

    return-void
.end method

.method public selectFirstTab()V
    .locals 2

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method public selectLastTab()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method public selectTabWithId(IF)V
    .locals 5

    .line 1762
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    cmpl-float v3, p2, v4

    if-lez v3, :cond_2

    move p2, v4

    :cond_2
    :goto_0
    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 1773
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1774
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    goto :goto_1

    .line 1776
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1777
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 1779
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1780
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->notifySwipeProgressChanged()V

    .line 1781
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1782
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1783
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToChild(I)V

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_5

    .line 1786
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1787
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 1788
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1790
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-eq p2, p1, :cond_4

    .line 1791
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onTabSelected(I)V

    .line 1794
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    :cond_5
    return-void
.end method

.method public setAnimationIdicatorProgress(F)V
    .locals 1

    .line 1436
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1437
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->notifySwipeProgressChanged()V

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz v0, :cond_0

    .line 1441
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    return-void
.end method

.method public setForwardToArchive(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isForwardToArchive:Z

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateBackground()V

    return-void
.end method

.method public setIsEditing(Z)V
    .locals 6

    .line 1832
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    const/4 p1, 0x1

    .line 1833
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    .line 1834
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1835
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1837
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1838
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1839
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v2, :cond_0

    .line 1840
    invoke-virtual {v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1847
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    if-eqz p1, :cond_4

    .line 1848
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    .line 1849
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 1850
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v1

    .line 1851
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 1852
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1853
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1854
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1856
    :cond_2
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1859
    :cond_3
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->lockFiltersInternal()V

    .line 1860
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1862
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    :cond_4
    return-void
.end method

.method public setSelectedTabId(I)I
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 139
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 140
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    :cond_0
    return v0
.end method

.method public shakeLock(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2194
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2195
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v2, :cond_0

    .line 2196
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 2197
    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v3, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2198
    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->shakeLockIcon(FI)V

    const/4 p1, 0x3

    .line 2199
    invoke-virtual {v2, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public stopAnimatingIndicator()V
    .locals 1

    const/4 v0, 0x0

    .line 1378
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return-void
.end method

.method public updateBackground()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isFilterTabsAtBottom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v2, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->FORWARD:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->withBackground:Z

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->mode:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isForwardToArchive:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_3

    :cond_3
    :goto_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    :goto_4
    return-void
.end method

.method public updateCustomTabWidth()V
    .locals 3

    .line 213
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isCustomTabWidthMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMaxTabWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMarginAndCount:I

    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    const/16 v0, 0x12

    .line 215
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabNoCounterMargin:I

    return-void

    .line 218
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget-object v2, Lcom/iMe/fork/enums/FilterTabWidthMode;->MEDIUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    if-ne v0, v2, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->customTabDefaultMargin:I

    .line 219
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    if-ne v0, v2, :cond_2

    const/16 v1, 0x8

    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabNoCounterMargin:I

    if-ne v0, v2, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 220
    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMarginAndCount:I

    if-ne v0, v2, :cond_4

    const/16 v0, 0x14

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    .line 221
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->customMaxTabWidth:I

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateLineCornerRadii()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->isFilterTabsAtBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lineCornerRadiiForBottom:[F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lineCornerRadiiForTop:[F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method
