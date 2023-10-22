.class public final Lcom/iMe/model/cryptobox/AnimatedHeaderItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "AnimatedHeaderItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;
    }
.end annotation


# instance fields
.field private final animationResId:I

.field private final button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

.field private final descriptionText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;)V
    .locals 1

    const-string v0, "descriptionText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 8
    iput p1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    .line 9
    iput-object p2, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;-><init>(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/cryptobox/AnimatedHeaderItem;ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;ILjava/lang/Object;)Lcom/iMe/model/cryptobox/AnimatedHeaderItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->copy(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;)Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;)Lcom/iMe/model/cryptobox/AnimatedHeaderItem;
    .locals 1

    const-string v0, "descriptionText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;-><init>(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    iget v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    iget v3, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    iget-object p1, p1, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAnimationResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    return v0
.end method

.method public final getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatedHeaderItem(animationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->animationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->descriptionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->button:Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
