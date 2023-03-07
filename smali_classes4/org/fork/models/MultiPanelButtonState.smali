.class public final Lorg/fork/models/MultiPanelButtonState;
.super Ljava/lang/Object;
.source "MultiPanelButtonState.kt"


# instance fields
.field private isEnabled:Z

.field private position:I

.field private final type:Lorg/fork/enums/MultiPanelButton;


# direct methods
.method public constructor <init>(Lorg/fork/enums/MultiPanelButton;ZI)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    .line 7
    iput-boolean p2, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    .line 8
    iput p3, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/fork/models/MultiPanelButtonState;Lorg/fork/enums/MultiPanelButton;ZIILjava/lang/Object;)Lorg/fork/models/MultiPanelButtonState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/fork/models/MultiPanelButtonState;->copy(Lorg/fork/enums/MultiPanelButton;ZI)Lorg/fork/models/MultiPanelButtonState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/fork/enums/MultiPanelButton;
    .locals 1

    iget-object v0, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    return v0
.end method

.method public final copy(Lorg/fork/enums/MultiPanelButton;ZI)Lorg/fork/models/MultiPanelButtonState;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fork/models/MultiPanelButtonState;

    invoke-direct {v0, p1, p2, p3}, Lorg/fork/models/MultiPanelButtonState;-><init>(Lorg/fork/enums/MultiPanelButton;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/models/MultiPanelButtonState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/models/MultiPanelButtonState;

    iget-object v1, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    iget-object v3, p1, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    iget-boolean v3, p1, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    iget p1, p1, Lorg/fork/models/MultiPanelButtonState;->position:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    return v0
.end method

.method public final getType()Lorg/fork/enums/MultiPanelButton;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 8
    iput p1, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPanelButtonState(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/MultiPanelButtonState;->type:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/MultiPanelButtonState;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/fork/models/MultiPanelButtonState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
