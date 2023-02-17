.class public final Lcom/smedialink/model/group/GroupMembersFilter$Companion;
.super Ljava/lang/Object;
.source "GroupMembersFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/group/GroupMembersFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$K8Dc75L-bpVyD0hm3woYIbNsY30(ZZLcom/smedialink/model/group/GroupMembersFilter;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/model/group/GroupMembersFilter$Companion;->getAvailableFilters$lambda-1$lambda-0(ZZLcom/smedialink/model/group/GroupMembersFilter;)Z

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

    invoke-direct {p0}, Lcom/smedialink/model/group/GroupMembersFilter$Companion;-><init>()V

    return-void
.end method

.method private static final getAvailableFilters$lambda-1$lambda-0(ZZLcom/smedialink/model/group/GroupMembersFilter;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->RESTRICTED:Lcom/smedialink/model/group/GroupMembersFilter;

    if-ne p2, v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final getAvailableFilters(ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/group/GroupMembersFilter;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/smedialink/model/group/GroupMembersFilter;->values()[Lcom/smedialink/model/group/GroupMembersFilter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;-><init>(ZZ)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    return-object v0
.end method
