.class public final Lcom/iMe/fork/models/MultiPanelButtonState;
.super Ljava/lang/Object;
.source "MultiPanelButtonState.kt"


# instance fields
.field private isEnabled:Z

.field private position:I

.field private final type:Lcom/iMe/fork/enums/MultiPanelButton;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/enums/MultiPanelButton;ZI)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    .line 7
    iput-boolean p2, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    .line 8
    iput p3, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/MultiPanelButtonState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/MultiPanelButtonState;

    iget-object v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    iget-object v3, p1, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    iget-boolean v3, p1, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    iget p1, p1, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    return v0
.end method

.method public final getType()Lcom/iMe/fork/enums/MultiPanelButton;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPanelButtonState(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->type:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/models/MultiPanelButtonState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
