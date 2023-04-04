.class public final Lcom/iMe/model/group/GroupMembersFilter$Companion;
.super Ljava/lang/Object;
.source "GroupMembersFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/group/GroupMembersFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9XFw3w6NuH6UksV9vmwfdJIfvAU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/model/group/GroupMembersFilter$Companion;->getAvailableFilters$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/group/GroupMembersFilter$Companion;-><init>()V

    return-void
.end method

.method private static final getAvailableFilters$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAvailableFilters(ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/iMe/model/group/GroupMembersFilter;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/iMe/model/group/GroupMembersFilter;->values()[Lcom/iMe/model/group/GroupMembersFilter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;

    invoke-direct {v1, p1, p2}, Lcom/iMe/model/group/GroupMembersFilter$Companion$getAvailableFilters$1$1;-><init>(ZZ)V

    new-instance p1, Lcom/iMe/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/iMe/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    return-object v0
.end method
