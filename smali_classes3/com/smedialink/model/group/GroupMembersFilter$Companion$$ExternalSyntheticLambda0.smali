.class public final synthetic Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;->f$0:Z

    iput-boolean p2, p0, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public synthetic and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lj$/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;->f$0:Z

    iget-boolean v1, p0, Lcom/smedialink/model/group/GroupMembersFilter$Companion$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-static {v0, v1, p1}, Lcom/smedialink/model/group/GroupMembersFilter$Companion;->$r8$lambda$K8Dc75L-bpVyD0hm3woYIbNsY30(ZZLcom/smedialink/model/group/GroupMembersFilter;)Z

    move-result p1

    return p1
.end method
