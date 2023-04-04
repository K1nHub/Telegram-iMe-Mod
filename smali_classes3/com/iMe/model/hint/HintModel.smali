.class public final Lcom/iMe/model/hint/HintModel;
.super Ljava/lang/Object;
.source "HintModel.kt"


# instance fields
.field private final autoHide:Z

.field private final text:Ljava/lang/String;

.field private final topArrow:Z

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/iMe/model/hint/HintModel;->type:I

    .line 8
    iput-boolean p3, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    .line 9
    iput-boolean p4, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x6

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/hint/HintModel;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/hint/HintModel;Ljava/lang/String;IZZILjava/lang/Object;)Lcom/iMe/model/hint/HintModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/iMe/model/hint/HintModel;->type:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/hint/HintModel;->copy(Ljava/lang/String;IZZ)Lcom/iMe/model/hint/HintModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/hint/HintModel;->type:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;IZZ)Lcom/iMe/model/hint/HintModel;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/hint/HintModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/hint/HintModel;-><init>(Ljava/lang/String;IZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/hint/HintModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/hint/HintModel;

    iget-object v1, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/hint/HintModel;->type:I

    iget v3, p1, Lcom/iMe/model/hint/HintModel;->type:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    iget-boolean v3, p1, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    iget-boolean p1, p1, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAutoHide()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopArrow()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/model/hint/HintModel;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/hint/HintModel;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintModel(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/hint/HintModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/hint/HintModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->topArrow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/hint/HintModel;->autoHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
