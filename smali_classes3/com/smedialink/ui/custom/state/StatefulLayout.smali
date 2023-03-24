.class public Lcom/smedialink/ui/custom/state/StatefulLayout;
.super Landroid/widget/FrameLayout;
.source "StatefulLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/state/StatefulLayout$Companion;,
        Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;,
        Lcom/smedialink/ui/custom/state/StatefulLayout$StateController;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatefulLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatefulLayout.kt\ncom/smedialink/ui/custom/state/StatefulLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,204:1\n1855#2,2:205\n1#3:207\n215#4:208\n216#4:211\n262#5,2:209\n*S KotlinDebug\n*F\n+ 1 StatefulLayout.kt\ncom/smedialink/ui/custom/state/StatefulLayout\n*L\n77#1:205,2\n123#1:208\n123#1:211\n123#1:209,2\n*E\n"
.end annotation


# instance fields
.field private mDirtyFlag:Z

.field private mInitialized:Z

.field private mOnStateChangeListener:Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;

.field private mState:Ljava/lang/String;

.field private final mStateViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/state/StatefulLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/state/StatefulLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/state/StatefulLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    .line 29
    sget-object p1, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mState:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/state/StatefulLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final internalSetState(Ljava/lang/String;)V
    .locals 4

    .line 120
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mState:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mDirtyFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mState:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 262
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mOnStateChangeListener:Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;->onStateChange(Ljava/lang/String;)V

    .line 125
    :cond_4
    iput-boolean v1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mDirtyFlag:Z

    return-void

    .line 120
    :cond_5
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot switch to state \"%s\". This state was not defined or the view for this state is null."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onSetupContentState()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 132
    sget-object v1, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {v1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 133
    invoke-virtual {v1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setState(Ljava/lang/String;)V

    .line 134
    iput-boolean v2, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mInitialized:Z

    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid child count. StatefulLayout must have exactly one child."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clearStates()V
    .locals 4

    .line 66
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 68
    sget-object v3, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {v3}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public final getStateView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    iget-boolean v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->onSetupContentState()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->restoreInstanceState(Landroid/os/Bundle;)Ljava/lang/String;

    const-string v0, "instanceState"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->saveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateful_layout_state"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setState(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mState:Ljava/lang/String;

    const-string v1, "stateful_layout_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setOnStateChangeListener(Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mOnStateChangeListener:Lcom/smedialink/ui/custom/state/StatefulLayout$OnStateChangeListener;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->internalSetState(Ljava/lang/String;)V

    return-void
.end method

.method public final setStateController(Lcom/smedialink/ui/custom/state/StatefulLayout$StateController;)V
    .locals 1

    const-string v0, "stateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->clearStates()V

    const/4 p1, 0x0

    .line 77
    throw p1
.end method

.method public final setStateView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mStateViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 42
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 44
    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/smedialink/ui/custom/state/StatefulLayout;->mDirtyFlag:Z

    return-void
.end method
