.class public abstract Lorg/telegram/ui/Cells/TextSelectionHelper;
.super Ljava/lang/Object;
.source "TextSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Cell::",
        "Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field protected actionsIsShowing:Z

.field allowDiscard:Z

.field public allowScrollPrentRelative:Z

.field private callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

.field protected capturedX:I

.field protected capturedY:I

.field protected cornerRadius:F

.field private deleteView:Landroid/widget/TextView;

.field private endArea:Landroid/graphics/RectF;

.field protected enterProgress:F

.field private handleViewAnimator:Landroid/animation/ValueAnimator;

.field protected handleViewProgress:F

.field private final hideActionsRunnable:Ljava/lang/Runnable;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private invalidateParent:Z

.field private isOneTouch:Z

.field keyboardSize:I

.field private lastX:I

.field private lastY:I

.field protected final layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

.field private longpressDelay:I

.field private magnifier:Landroid/widget/Magnifier;

.field private magnifierDx:F

.field private magnifierDy:F

.field private magnifierX:F

.field private magnifierXanimated:F

.field private magnifierY:F

.field private magnifierYanimated:F

.field protected maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCell;"
        }
    .end annotation
.end field

.field protected maybeTextX:I

.field protected maybeTextY:I

.field protected movingDirectionSettling:Z

.field protected movingHandle:Z

.field protected movingHandleStart:Z

.field movingOffsetX:F

.field movingOffsetY:F

.field protected multiselect:Z

.field private onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

.field private parentIsScrolling:Z

.field protected parentNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field protected parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field protected parentView:Landroid/view/ViewGroup;

.field private popupDivider:Landroid/view/View;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupTranslateButton:Landroid/widget/TextView;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollDown:Z

.field private scrollRunnable:Ljava/lang/Runnable;

.field private scrolling:Z

.field protected selectedCellId:I

.field protected selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCell;"
        }
    .end annotation
.end field

.field public selectionEnd:I

.field protected selectionHandlePaint:Landroid/graphics/Paint;

.field protected selectionHandlePath:Landroid/graphics/Path;

.field protected selectionPaint:Landroid/graphics/Paint;

.field protected selectionPath:Landroid/graphics/Path;

.field public selectionStart:I

.field protected showActionsAsPopupAlways:Z

.field private final showActionsRunnable:Ljava/lang/Runnable;

.field private snap:Z

.field private startArea:Landroid/graphics/RectF;

.field final startSelectionRunnable:Ljava/lang/Runnable;

.field private final tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

.field protected final textArea:Landroid/graphics/Rect;

.field private final textSelectActionCallback:Landroid/view/ActionMode$Callback;

.field protected textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Cells/TextSelectionHelper<",
            "TCell;>.TextSelectionOverlay;"
        }
    .end annotation
.end field

.field protected textX:I

.field protected textY:I

.field protected tmpCoord:[I

.field private topOffset:I

.field private touchSlop:I

.field private tryCapture:Z

.field public useMovingOffset:Z


# direct methods
.method public static synthetic $r8$lambda$D0rH3kxlZWp0snWOHpJwW8AXTzA(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$showHandleViews$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OkeDC0M73r5U-NotCBZfrONvRGc(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$showActions$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__J8rSkxHzzfL7rlpFyLTCQGChI(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ajtrm34re0wnWoEjANRHFxBJ5mg(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$showActions$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yoFW6u4iJzKU6CNCjva468FdG9Y(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$showActions$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    .line 99
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$1;)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    .line 105
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    .line 106
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;-><init>(Landroid/graphics/Path;)V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 111
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->createActionCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startArea:Landroid/graphics/RectF;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->endArea:Landroid/graphics/RectF;

    .line 152
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    .line 156
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsAsPopupAlways:Z

    .line 162
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    .line 311
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    .line 329
    iput-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    .line 522
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    .line 643
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$3;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    .line 1765
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    .line 316
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->longpressDelay:I

    .line 317
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrolling:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrolling:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastX:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/TextSelectionHelper;I)I
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastX:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastY:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Cells/TextSelectionHelper;I)I
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastY:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCoordsInParent()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->endArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showMagnifier(I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideMagnifier()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollDown:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->topOffset:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollDown:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidateParent:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->copyText()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->quoteText()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActions()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    return p0
.end method

.method private copyText()V
    .locals 1

    .line 1600
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1607
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1608
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    const/4 v0, 0x1

    .line 1609
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    if-eqz v0, :cond_2

    .line 1611
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onTextCopied()V

    :cond_2
    return-void
.end method

.method private createActionCallback()Landroid/view/ActionMode$Callback;
    .locals 3

    .line 1445
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1543
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1544
    new-instance v1, Lorg/telegram/ui/Cells/TextSelectionHelper$5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$5;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/ActionMode$Callback;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private drawLine(Landroid/text/Layout;IIIZZF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p7

    .line 1767
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->reset()V

    .line 1768
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-virtual {v1, v2, v3, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1771
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    iget v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    const/4 v6, 0x0

    if-gez v5, :cond_0

    .line 1772
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 1773
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    sub-int/2addr v7, v5

    int-to-float v7, v7

    .line 1775
    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    iget v8, v8, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    int-to-float v5, v5

    sub-float/2addr v8, v5

    div-float/2addr v7, v8

    goto :goto_0

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    move v5, v6

    :goto_0
    const/4 v8, 0x0

    .line 1780
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->access$3300(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-ge v8, v9, :cond_3

    .line 1781
    iget-object v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v9}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->access$3400(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    .line 1782
    iget v11, v9, Landroid/graphics/RectF;->left:F

    .line 1783
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    if-eqz p5, :cond_1

    iget v12, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float/2addr v12, v10

    goto :goto_2

    :cond_1
    move v12, v6

    :goto_2
    sub-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v5

    mul-float/2addr v12, v7

    add-float/2addr v12, v5

    float-to-int v12, v12

    int-to-float v12, v12

    iget v13, v9, Landroid/graphics/RectF;->right:F

    .line 1785
    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    if-eqz p6, :cond_2

    iget v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float/2addr v14, v10

    goto :goto_3

    :cond_2
    move v14, v6

    :goto_3
    add-float/2addr v13, v14

    float-to-int v10, v13

    int-to-float v10, v10

    iget v13, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v5

    mul-float/2addr v13, v7

    add-float/2addr v13, v5

    float-to-int v13, v13

    int-to-float v13, v13

    .line 1782
    invoke-virtual {v9, v11, v12, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1788
    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v9, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1791
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->access$3300(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)I

    move-result v4

    if-nez v4, :cond_4

    if-nez p6, :cond_4

    .line 1792
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v2, v2

    .line 1793
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    .line 1794
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 1795
    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    int-to-float v2, v2

    iget v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float v7, v6, v10

    sub-float/2addr v2, v7

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    int-to-float v1, v1

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 p1, v5

    move/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v3

    move/from16 p5, v1

    move-object/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_4
    return-void
.end method

.method private getCoordsInParent()[I
    .locals 5

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1363
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move v2, v1

    move v3, v2

    .line 1364
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eq v0, v4, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v2, v2

    .line 1370
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    .line 1371
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1372
    instance-of v4, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_1

    .line 1373
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1374
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1376
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1377
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    move v2, v1

    move v3, v2

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private hideActions()V
    .locals 2

    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    if-eqz v0, :cond_0

    .line 658
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 661
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    .line 663
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    .line 667
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_3
    return-void
.end method

.method private hideMagnifier()V
    .locals 2

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    :cond_0
    return-void
.end method

.method public static isInterruptedCharacter(C)Z
    .locals 1

    .line 756
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 524
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActions()V

    return-void
.end method

.method private synthetic lambda$showActions$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 559
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 560
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 561
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showActions$3(Landroid/view/View;)V
    .locals 0

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->copyText()V

    return-void
.end method

.method private synthetic lambda$showActions$4(Landroid/view/View;)V
    .locals 0

    .line 592
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->translateText()V

    return-void
.end method

.method private synthetic lambda$showHandleViews$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 506
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    return-void
.end method

.method private quoteText()V
    .locals 4

    .line 1616
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    .line 1622
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 1627
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1631
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1632
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return-void
.end method

.method private showActions()V
    .locals 22

    move-object/from16 v0, p0

    .line 528
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v1, :cond_0

    return-void

    .line 531
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    .line 532
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canShowActions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 533
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    if-nez v1, :cond_2

    .line 534
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 535
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar;

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 536
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    check-cast v5, Landroid/view/ActionMode$Callback2;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-direct {v2, v4, v5, v6, v1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    .line 537
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 539
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 540
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/view/ActionMode;->hide(J)V

    .line 542
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 543
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    goto/16 :goto_0

    .line 546
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsAsPopupAlways:Z

    if-nez v1, :cond_4

    .line 547
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    goto/16 :goto_0

    .line 551
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canShowActions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 552
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 553
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupRect:Landroid/graphics/Rect;

    .line 554
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 555
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 556
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->menu_copy:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 558
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v6, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 566
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 568
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    .line 569
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v6

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 571
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    const/16 v7, 0x14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v1, v8, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 573
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 574
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    iget-object v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1040001

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    new-instance v11, Landroid/view/View;

    iget-object v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupDivider:Landroid/view/View;

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, 0x10

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x8

    .line 584
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v11, Landroid/widget/TextView;

    iget-object v14, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    .line 586
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 587
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v11, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 588
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 589
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 590
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->sending_settings_translation_enable_item_title:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 592
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v12, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v1, v6, v12, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 598
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 599
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v6, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 600
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 602
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_5

    .line 603
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 607
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->deleteView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupDivider:Landroid/view/View;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 609
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 615
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v1, :cond_6

    .line 616
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result v1

    neg-int v1, v1

    .line 617
    iget v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->offsetToCord(I)[I

    move-result-object v6

    .line 618
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCoordsInParent()[I

    move-result-object v7

    .line 619
    aget v6, v6, v3

    iget v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v6, v8

    aget v3, v7, v3

    add-int/2addr v6, v3

    div-int/2addr v1, v4

    add-int/2addr v6, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v6, v1

    if-gez v6, :cond_7

    :cond_6
    move v6, v5

    .line 623
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {v1, v3, v2, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 624
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    :cond_8
    :goto_0
    return-void
.end method

.method private showMagnifier(I)V
    .locals 9

    .line 419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 423
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 425
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v1, :cond_2

    return-void

    .line 431
    :cond_2
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 433
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 434
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCoordsInParent()[I

    move-result-object v3

    .line 435
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 436
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v6, v6, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 440
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    instance-of v7, v6, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 441
    aget v0, v3, v8

    .line 442
    aget v1, v3, v8

    invoke-interface {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 444
    :cond_3
    aget v6, v3, v8

    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 445
    aget v3, v3, v8

    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    add-float/2addr v3, v0

    float-to-int v1, v3

    move v0, v6

    :goto_1
    if-ge p1, v0, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    if-le p1, v1, :cond_5

    move p1, v1

    .line 453
    :cond_5
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 454
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    .line 455
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    .line 457
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_7

    .line 458
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    .line 459
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    .line 462
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    if-nez p1, :cond_8

    .line 463
    new-instance p1, Landroid/widget/Magnifier;

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-direct {p1, v0}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    .line 464
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 465
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 468
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    cmpl-float v1, p1, v0

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v1, :cond_9

    .line 469
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    mul-float/2addr v1, v3

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 472
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    const/4 v1, 0x0

    cmpl-float v4, p1, v1

    if-lez v4, :cond_a

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_a

    .line 473
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    goto :goto_3

    :cond_a
    cmpg-float p1, p1, v1

    if-gez p1, :cond_b

    .line 474
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    .line 475
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 478
    :cond_b
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    cmpl-float v4, p1, v0

    if-eqz v4, :cond_c

    .line 479
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    mul-float/2addr v4, v3

    add-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 482
    :cond_c
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_d

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_d

    .line 483
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    goto :goto_4

    :cond_d
    cmpg-float p1, p1, v1

    if-gez p1, :cond_e

    .line 484
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e

    .line 485
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 488
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 489
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 488
    invoke-virtual {p1, v0, v1}, Landroid/widget/Magnifier;->show(FF)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    invoke-virtual {p1}, Landroid/widget/Magnifier;->update()V

    nop

    :cond_f
    :goto_5
    return-void
.end method

.method private translateText()V
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected canSelect(I)Z
    .locals 1

    .line 1411
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected canShowActions()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected canShowQuote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelTextSelectionRunnable()V
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return-void
.end method

.method public checkSelectionCancel(Landroid/view/MotionEvent;)V
    .locals 2

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 688
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->cancelTextSelectionRunnable()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 698
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 3

    .line 702
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onExitSelectionMode(Z)V

    const/4 p1, -0x1

    .line 703
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 704
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 705
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideMagnifier()V

    .line 706
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    .line 707
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v0, 0x0

    .line 709
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 712
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 713
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 714
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    .line 716
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    .line 717
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    if-eqz v2, :cond_1

    .line 718
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onStateChanged(Z)V

    .line 720
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 721
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 722
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 723
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 724
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 725
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 726
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p7

    .line 1670
    iget-object v0, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1671
    iget-object v0, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1672
    iget v0, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    const v1, 0x3fd33333    # 1.65f

    mul-float v13, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v14, v0

    .line 1676
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1677
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    const/16 v16, 0x1

    if-ne v15, v7, :cond_0

    xor-int/lit8 v5, p5, 0x1

    xor-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, p3

    move/from16 v4, p4

    move v14, v7

    move/from16 v7, p7

    .line 1680
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    move/from16 v17, v13

    move v13, v14

    goto/16 :goto_4

    .line 1682
    :cond_0
    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1684
    invoke-virtual {v10, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1687
    invoke-virtual {v10, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    .line 1689
    invoke-virtual {v10, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v0

    .line 1691
    :goto_0
    invoke-virtual {v10, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1695
    :cond_2
    :goto_1
    invoke-virtual {v10, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    goto :goto_2

    .line 1697
    :cond_4
    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    :goto_2
    float-to-int v4, v4

    .line 1699
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1700
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v0, :cond_5

    .line 1701
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1702
    new-instance v1, Landroid/graphics/Rect;

    int-to-float v2, v5

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v14

    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    int-to-float v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v14

    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_5
    move v4, v0

    move-object v6, v1

    xor-int/lit8 v5, p5, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, p3

    move-object v9, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move v13, v7

    move/from16 v7, p7

    .line 1705
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    if-eqz v9, :cond_6

    .line 1707
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1708
    iget-object v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_6
    add-int/lit8 v0, v15, 0x1

    :goto_3
    if-ge v0, v13, :cond_7

    .line 1711
    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    float-to-int v1, v1

    .line 1712
    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    float-to-int v2, v2

    .line 1713
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1714
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1715
    iget-object v2, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    int-to-float v3, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v4, v14

    sub-float v19, v3, v4

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float v21, v1, v4

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v22, v1

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1717
    :cond_7
    invoke-virtual {v10, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    const/4 v5, 0x1

    xor-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v13

    move/from16 v4, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    .line 1719
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_9

    .line 1721
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1724
    :cond_9
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 1725
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 1726
    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    .line 1727
    invoke-virtual {v10, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v5, v5

    if-eqz p5, :cond_a

    if-eqz p6, :cond_a

    cmpl-float v6, v4, v5

    if-nez v6, :cond_a

    sub-float v6, v3, v2

    .line 1729
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v17

    if-gez v6, :cond_a

    .line 1730
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1731
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v5, v5

    sub-float v6, v4, v17

    float-to-int v6, v6

    float-to-int v2, v2

    float-to-int v4, v4

    invoke-virtual {v3, v5, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1732
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1733
    iget-object v4, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v6, p1

    if-lt v0, v1, :cond_c

    .line 1735
    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v6, p1

    if-eqz p5, :cond_b

    .line 1738
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1739
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v9, v2

    sub-float v12, v4, v17

    float-to-int v12, v12

    add-float v2, v2, v17

    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    float-to-int v4, v4

    invoke-virtual {v7, v9, v12, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1740
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1741
    iget-object v4, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    if-lt v0, v1, :cond_b

    .line 1743
    iget v2, v7, Landroid/graphics/Rect;->left:I

    move/from16 v4, v17

    float-to-int v9, v4

    sub-int/2addr v2, v9

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v2, v9, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1744
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_6

    :cond_b
    move/from16 v4, v17

    :goto_6
    if-eqz p6, :cond_c

    .line 1748
    invoke-virtual {v10, v11}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1749
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    sub-float v7, v3, v4

    invoke-virtual {v10, v13}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    sub-float v4, v5, v4

    float-to-int v4, v4

    float-to-int v3, v3

    float-to-int v5, v5

    invoke-virtual {v2, v7, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1750
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1751
    iget-object v4, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    if-lt v0, v1, :cond_c

    .line 1753
    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 1758
    :cond_c
    :goto_7
    iget-object v0, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Landroid/graphics/Path;

    iget-object v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_d

    .line 1760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1761
    iget-object v0, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    iget-object v1, v8, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V
    .locals 1

    const/4 v0, 0x0

    .line 1813
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    return-void
.end method

.method protected abstract fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
.end method

.method protected abstract getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIITCell;Z)I"
        }
    .end annotation
.end method

.method protected abstract getLineHeight()I
.end method

.method public getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lorg/telegram/ui/Cells/TextSelectionHelper<",
            "TCell;>.TextSelectionOverlay;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    .line 676
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    return-object p1
.end method

.method public getParentBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParentTopPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 3278
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method protected getSelectedText()Ljava/lang/CharSequence;
    .locals 3

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCell;Z)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 3274
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_0

    .line 1436
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->invalidate()V

    .line 1438
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    :cond_1
    return-void
.end method

.method public isInSelectionMode()Z
    .locals 1

    .line 514
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 683
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isTryingSelect()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v0
.end method

.method protected jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZFFTCell;)V"
        }
    .end annotation

    .line 1389
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 1390
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-nez p3, :cond_0

    .line 1391
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le p2, p1, :cond_0

    .line 1393
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1394
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    const/4 p1, 0x0

    .line 1395
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1397
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    goto :goto_0

    .line 1399
    :cond_1
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-nez p3, :cond_2

    .line 1400
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-le p1, p2, :cond_2

    .line 1402
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1403
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1404
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1406
    :cond_2
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    :goto_0
    return-void
.end method

.method protected offsetToCord(I)[I
    .locals 5

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 1657
    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    sub-int/2addr p1, v0

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    .line 1658
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1662
    :cond_0
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1663
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    add-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v2, v3

    .line 1664
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1665
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p1, v1

    return-object p1

    .line 1659
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    return-object p1
.end method

.method protected onExitSelectionMode(Z)V
    .locals 0

    return-void
.end method

.method protected onOffsetChanged()V
    .locals 0

    return-void
.end method

.method public onParentScrolled()V
    .locals 2

    .line 741
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 742
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    .line 743
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 744
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    :cond_0
    return-void
.end method

.method protected onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method protected abstract onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCell;TCell;)V"
        }
    .end annotation
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 393
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    sub-int v3, v2, v0

    sub-int/2addr v2, v0

    mul-int/2addr v3, v2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    sub-int v2, v0, p1

    sub-int/2addr v0, p1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    .line 394
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    mul-int/2addr p1, p1

    if-le v3, p1, :cond_1

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 396
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 398
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return p1

    .line 401
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 402
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v1

    .line 355
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 357
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz p1, :cond_a

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 361
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 362
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 363
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_4

    add-int/lit8 p1, v4, -0x1

    .line 364
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_5

    add-int/lit8 p1, v4, 0x1

    .line 365
    :cond_5
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v0, v4, :cond_6

    add-int/lit8 v0, v4, 0x1

    .line 366
    :cond_6
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_7

    sub-int/2addr v3, v2

    move v6, v3

    goto :goto_0

    :cond_7
    move v6, v0

    .line 368
    :goto_0
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I

    move-result v0

    .line 369
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 370
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v0, v4, :cond_9

    .line 371
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, v0, v4, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v4, :cond_8

    .line 373
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v1

    .line 376
    :cond_8
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 377
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    .line 378
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    .line 379
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    :cond_9
    if-ltz v0, :cond_a

    .line 382
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v0, p1, :cond_a

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_a

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->longpressDelay:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 385
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 388
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return p1
.end method

.method protected pickEndView()V
    .locals 0

    return-void
.end method

.method protected pickStartView()V
    .locals 0

    return-void
.end method

.method protected selectLayout(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    return-void
.end method

.method public setInvalidateParent()V
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidateParent:Z

    return-void
.end method

.method public setKeyboardSize(I)V
    .locals 0

    .line 3261
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->keyboardSize:I

    .line 3262
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public setMaybeTextCord(II)V
    .locals 0

    .line 348
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 349
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    return-void
.end method

.method public setOnTranslate(Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 335
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 336
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 338
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setScrollingParent(Landroid/view/View;)V
    .locals 1

    .line 342
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    .line 343
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentNestedScrollView:Landroidx/core/widget/NestedScrollView;

    :cond_0
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 760
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->topOffset:I

    return-void
.end method

.method protected showHandleViews()V
    .locals 4

    .line 498
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 504
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    .line 505
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 749
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
