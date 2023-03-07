.class public final Lorg/fork/utils/TabbedFragmentPage;
.super Lorg/fork/utils/AbstractTabbedViewPage;
.source "TabbedFragmentPage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/telegram/ui/ActionBar/BaseFragment;",
        ">",
        "Lorg/fork/utils/AbstractTabbedViewPage;"
    }
.end annotation


# instance fields
.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final icon:I

.field private final provideViewAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITT;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provideViewAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/fork/utils/AbstractTabbedViewPage;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p1, p0, Lorg/fork/utils/TabbedFragmentPage;->title:Ljava/lang/String;

    .line 10
    iput p2, p0, Lorg/fork/utils/TabbedFragmentPage;->icon:I

    .line 11
    iput-object p3, p0, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 12
    iput-object p4, p0, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 12
    new-instance p4, Lorg/fork/utils/TabbedFragmentPage$1;

    invoke-direct {p4, p3}, Lorg/fork/utils/TabbedFragmentPage$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/utils/TabbedFragmentPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fork/utils/TabbedFragmentPage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getIcon()I

    move-result v1

    invoke-virtual {p1}, Lorg/fork/utils/TabbedFragmentPage;->getIcon()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p1, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/fork/utils/TabbedFragmentPage;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/fork/utils/TabbedFragmentPage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getIcon()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabbedFragmentPage(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fork/utils/TabbedFragmentPage;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", provideViewAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/utils/TabbedFragmentPage;->provideViewAction:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
