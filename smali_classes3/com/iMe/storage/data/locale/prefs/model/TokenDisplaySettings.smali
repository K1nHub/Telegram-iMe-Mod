.class public abstract Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;
.super Ljava/lang/Object;
.source "TokenDisplaySettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;,
        Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;
    }
.end annotation


# instance fields
.field private transient isVisible:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p2, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;->isVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;->isVisible:Z

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings;->isVisible:Z

    return-void
.end method
