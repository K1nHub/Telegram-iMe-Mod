.class public final Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;
.super Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;
.source "TokenDisplaySettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crypto"
.end annotation


# instance fields
.field private isVisible:Z

.field private position:I

.field private final tokenAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    const-string v0, "tokenAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->position:I

    .line 10
    iput-boolean p2, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible:Z

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;IZLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->copy(IZLjava/lang/String;)Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IZLjava/lang/String;)Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;
    .locals 1

    const-string v0, "tokenAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->position:I

    return v0
.end method

.method public final getTokenAddress()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible:Z

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->position:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crypto(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tokenAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->tokenAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
