.class public final Lcom/smedialink/model/staking/StakingNavigationTab;
.super Lcom/smedialink/model/common/NavigationTab;
.source "StakingNavigationTab.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/model/common/NavigationTab<",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final page:Lorg/fork/utils/TabbedFragmentPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/fork/utils/TabbedFragmentPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lorg/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-direct {p0, p1, v0}, Lcom/smedialink/model/common/NavigationTab;-><init>(ILcom/smedialink/ui/base/mvp/MvpFragment;)V

    .line 8
    iput p1, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->id:I

    .line 9
    iput-object p2, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/staking/StakingNavigationTab;ILorg/fork/utils/TabbedFragmentPage;ILjava/lang/Object;)Lcom/smedialink/model/staking/StakingNavigationTab;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/staking/StakingNavigationTab;->copy(ILorg/fork/utils/TabbedFragmentPage;)Lcom/smedialink/model/staking/StakingNavigationTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()Lorg/fork/utils/TabbedFragmentPage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    return-object v0
.end method

.method public final copy(ILorg/fork/utils/TabbedFragmentPage;)Lcom/smedialink/model/staking/StakingNavigationTab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;)",
            "Lcom/smedialink/model/staking/StakingNavigationTab;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/staking/StakingNavigationTab;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/staking/StakingNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/staking/StakingNavigationTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/staking/StakingNavigationTab;

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    iget-object p1, p1, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->id:I

    return v0
.end method

.method public final getPage()Lorg/fork/utils/TabbedFragmentPage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    invoke-virtual {v1}, Lorg/fork/utils/TabbedFragmentPage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingNavigationTab(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingNavigationTab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingNavigationTab;->page:Lorg/fork/utils/TabbedFragmentPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
