.class public final Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;
.super Lcom/iMe/model/common/NavigationTab;
.source "WalletBottomNavigationTab.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/model/common/NavigationTab<",
        "Lcom/iMe/ui/wallet/common/WalletTabFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final fragment:Lcom/iMe/ui/wallet/common/WalletTabFragment;

.field private final id:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/iMe/model/common/NavigationTab;-><init>(ILcom/iMe/ui/base/mvp/MvpFragment;)V

    .line 8
    iput p1, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->id:I

    .line 9
    iput-object p2, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->fragment:Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 10
    iput-object p3, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->copy(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()Lcom/iMe/ui/wallet/common/WalletTabFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getFragment()Lcom/iMe/ui/base/mvp/MvpFragment;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->fragment:Lcom/iMe/ui/wallet/common/WalletTabFragment;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletBottomNavigationTab(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
