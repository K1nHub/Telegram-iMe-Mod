.class public final Lcom/smedialink/ui/pager/FragmentContextViewParams;
.super Ljava/lang/Object;
.source "FragmentContextViewParams.kt"


# instance fields
.field private final enabled:Z

.field private final supportsCalls:Z

.field private final supportsVoices:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    .line 5
    iput-boolean p2, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    .line 6
    iput-boolean p3, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/ui/pager/FragmentContextViewParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/ui/pager/FragmentContextViewParams;

    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    iget-boolean v3, p1, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    iget-boolean v3, p1, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    iget-boolean p1, p1, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    return v0
.end method

.method public final getSupportsCalls()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    return v0
.end method

.method public final getSupportsVoices()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentContextViewParams(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsVoices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/ui/pager/FragmentContextViewParams;->supportsVoices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
