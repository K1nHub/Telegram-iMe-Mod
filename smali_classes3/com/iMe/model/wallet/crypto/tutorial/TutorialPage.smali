.class public final Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;
.super Ljava/lang/Object;
.source "TutorialPage.kt"


# instance fields
.field private final animatedIcon:I

.field private final description:I

.field private final title:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    .line 8
    iput p2, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    .line 9
    iput p3, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;IIIILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->copy(III)Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    return v0
.end method

.method public final copy(III)Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    iget v3, p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    iget v3, p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    iget p1, p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAnimatedIcon()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    return v0
.end method

.method public final getDescription()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TutorialPage(animatedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->animatedIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;->description:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
