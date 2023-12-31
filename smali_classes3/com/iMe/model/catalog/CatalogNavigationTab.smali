.class public final Lcom/iMe/model/catalog/CatalogNavigationTab;
.super Lcom/iMe/model/common/NavigationTab;
.source "CatalogNavigationTab.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/model/common/NavigationTab<",
        "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final page:Lcom/iMe/fork/utils/TabbedFragmentPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-direct {p0, p1, v0}, Lcom/iMe/model/common/NavigationTab;-><init>(ILcom/iMe/ui/base/mvp/MvpFragment;)V

    .line 8
    iput p1, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->id:I

    .line 9
    iput-object p2, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/catalog/CatalogNavigationTab;ILcom/iMe/fork/utils/TabbedFragmentPage;ILjava/lang/Object;)Lcom/iMe/model/catalog/CatalogNavigationTab;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/catalog/CatalogNavigationTab;->copy(ILcom/iMe/fork/utils/TabbedFragmentPage;)Lcom/iMe/model/catalog/CatalogNavigationTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()Lcom/iMe/fork/utils/TabbedFragmentPage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    return-object v0
.end method

.method public final copy(ILcom/iMe/fork/utils/TabbedFragmentPage;)Lcom/iMe/model/catalog/CatalogNavigationTab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;)",
            "Lcom/iMe/model/catalog/CatalogNavigationTab;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/catalog/CatalogNavigationTab;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/catalog/CatalogNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    invoke-virtual {p0}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    iget-object p1, p1, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

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
    iget v0, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->id:I

    return v0
.end method

.method public final getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {v1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogNavigationTab(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/catalog/CatalogNavigationTab;->page:Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
