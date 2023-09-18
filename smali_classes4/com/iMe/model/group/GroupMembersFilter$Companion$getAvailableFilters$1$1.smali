.class final Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupMembersFilter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/model/group/GroupMembersFilter$Companion;->getAvailableFilters(ZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/group/GroupMembersFilter;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isAdmin:Z

.field final synthetic $isChannel:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;->$isAdmin:Z

    iput-boolean p2, p0, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;->$isChannel:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/model/group/GroupMembersFilter;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->RESTRICTED:Lcom/iMe/model/group/GroupMembersFilter;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;->$isAdmin:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;->$isChannel:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {p0, p1}, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;->invoke(Lcom/iMe/model/group/GroupMembersFilter;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
