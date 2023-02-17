.class public abstract Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDelay:J

.field private mAddDuration:J

.field private mAddInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangeAddDuration:J

.field private mChangeDelay:J

.field private mChangeInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangeRemoveDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDelay:J

.field private mMoveDuration:J

.field private mMoveInterpolator:Landroid/animation/TimeInterpolator;

.field private mRemoveDelay:J

.field private mRemoveDuration:J

.field private mRemoveInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12766
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 12769
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 12770
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    const-wide/16 v0, 0xfa

    .line 12771
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12772
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeAddDuration:J

    .line 12773
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeRemoveDuration:J

    const-wide/16 v0, 0x0

    .line 12780
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDelay:J

    .line 12781
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDelay:J

    .line 12782
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDelay:J

    .line 12784
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDelay:J

    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 13204
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    .line 13205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 13209
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 13210
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animatePersistence(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 13423
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public final dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 13288
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13289
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 13290
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .line 13431
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13433
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13435
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDelay()J
    .locals 2

    .line 12906
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDelay:J

    return-wide v0
.end method

.method public getAddDuration()J
    .locals 2

    .line 12810
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getAddInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 12941
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getChangeAddDuration()J
    .locals 2

    .line 12846
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeAddDuration:J

    return-wide v0
.end method

.method public getChangeDelay()J
    .locals 2

    .line 12918
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDelay:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 4

    .line 12855
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeAddDuration:J

    iget-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeRemoveDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 12953
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getChangeRemoveDuration()J
    .locals 2

    .line 12864
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeRemoveDuration:J

    return-wide v0
.end method

.method public getMoveDelay()J
    .locals 2

    .line 12914
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDelay:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 12792
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getMoveInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 12945
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getRemoveDelay()J
    .locals 2

    .line 12910
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDelay:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 12828
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getRemoveInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 12949
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2

    .line 13360
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    .line 13363
    invoke-interface {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    goto :goto_0

    .line 13365
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .line 13449
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0

    .line 13033
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 13004
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDelay(J)V
    .locals 0

    .line 12890
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDelay:J

    return-void
.end method

.method public setAddDuration(J)V
    .locals 0

    .line 12819
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-void
.end method

.method public setChangeDuration(J)V
    .locals 0

    .line 12873
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeAddDuration:J

    .line 12874
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeRemoveDuration:J

    return-void
.end method

.method public setDurations(J)V
    .locals 0

    .line 12922
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 12923
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12924
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12925
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeAddDuration:J

    .line 12926
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeRemoveDuration:J

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 12934
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddInterpolator:Landroid/animation/TimeInterpolator;

    .line 12935
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveInterpolator:Landroid/animation/TimeInterpolator;

    .line 12936
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveInterpolator:Landroid/animation/TimeInterpolator;

    .line 12937
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0

    .line 12965
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    return-void
.end method

.method public setMoveDelay(J)V
    .locals 0

    .line 12898
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDelay:J

    return-void
.end method

.method public setMoveDuration(J)V
    .locals 0

    .line 12801
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-void
.end method

.method public setMoveInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 12930
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setRemoveDelay(J)V
    .locals 0

    .line 12894
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDelay:J

    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 0

    .line 12837
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-void
.end method
