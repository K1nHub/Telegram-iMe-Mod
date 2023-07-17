.class public final Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;
.super Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;
.source "TokenDisplaySettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# instance fields
.field private isVisible:Z

.field private position:I

.field private final tokenTicker:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    const-string v0, "tokenTicker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->position:I

    .line 16
    iput-boolean p2, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible:Z

    .line 17
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->getPosition()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible()Z

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->position:I

    return v0
.end method

.method public final getTokenTicker()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible:Z

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->position:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binance(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tokenTicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->tokenTicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
