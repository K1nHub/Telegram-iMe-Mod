.class public Ldrinkless/org/ton/TonApi$SyncStateInProgress;
.super Ldrinkless/org/ton/TonApi$SyncState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStateInProgress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x66bc4c7


# instance fields
.field public currentSeqno:I

.field public fromSeqno:I

.field public toSeqno:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1488
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SyncState;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromSeqno",
            "toSeqno",
            "currentSeqno"
        }
    .end annotation

    .line 1491
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SyncState;-><init>()V

    .line 1492
    iput p1, p0, Ldrinkless/org/ton/TonApi$SyncStateInProgress;->fromSeqno:I

    .line 1493
    iput p2, p0, Ldrinkless/org/ton/TonApi$SyncStateInProgress;->toSeqno:I

    .line 1494
    iput p3, p0, Ldrinkless/org/ton/TonApi$SyncStateInProgress;->currentSeqno:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x66bc4c7

    return v0
.end method
