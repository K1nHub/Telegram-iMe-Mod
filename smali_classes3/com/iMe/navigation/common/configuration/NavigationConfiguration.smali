.class public final Lcom/iMe/navigation/common/configuration/NavigationConfiguration;
.super Ljava/lang/Object;
.source "NavigationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/navigation/common/configuration/NavigationConfiguration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/iMe/model/common/NavigationTab<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "viewConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    .line 7
    iput-object p2, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    iget-object v1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    iget-object v3, p1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public final getViewConfiguration()Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationConfiguration(viewConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->viewConfiguration:Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;->tabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
