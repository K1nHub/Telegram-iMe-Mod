.class public Ldrinkless/org/ton/TonApi$PchanPromise;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanPromise"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5df16ba3


# instance fields
.field public channelId:J

.field public promiseA:J

.field public promiseB:J

.field public signature:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2875
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signature",
            "promiseA",
            "promiseB",
            "channelId"
        }
    .end annotation

    .line 2878
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2879
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanPromise;->signature:[B

    .line 2880
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$PchanPromise;->promiseA:J

    .line 2881
    iput-wide p4, p0, Ldrinkless/org/ton/TonApi$PchanPromise;->promiseB:J

    .line 2882
    iput-wide p6, p0, Ldrinkless/org/ton/TonApi$PchanPromise;->channelId:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5df16ba3

    return v0
.end method
