.class public abstract Lcom/smedialink/storage/domain/model/crypto/Chain$BSC;
.super Lcom/smedialink/storage/domain/model/crypto/Chain;
.source "Chain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/Chain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BSC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Main;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Testnet;
    }
.end annotation


# instance fields
.field private final id:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/smedialink/storage/domain/model/crypto/Chain;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC;->id:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC;->id:J

    return-wide v0
.end method
