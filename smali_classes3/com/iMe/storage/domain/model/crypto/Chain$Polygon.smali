.class public abstract Lcom/iMe/storage/domain/model/crypto/Chain$Polygon;
.super Lcom/iMe/storage/domain/model/crypto/Chain;
.source "Chain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/Chain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Polygon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Main;,
        Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Testnet;
    }
.end annotation


# instance fields
.field private final id:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/storage/domain/model/crypto/Chain;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon;->id:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon;->id:J

    return-wide v0
.end method
