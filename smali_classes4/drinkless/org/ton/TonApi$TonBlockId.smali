.class public Ldrinkless/org/ton/TonApi$TonBlockId;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonBlockId"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x46a7805e


# instance fields
.field public seqno:I

.field public shard:J

.field public workchain:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2270
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workchain",
            "shard",
            "seqno"
        }
    .end annotation

    .line 2273
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2274
    iput p1, p0, Ldrinkless/org/ton/TonApi$TonBlockId;->workchain:I

    .line 2275
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$TonBlockId;->shard:J

    .line 2276
    iput p4, p0, Ldrinkless/org/ton/TonApi$TonBlockId;->seqno:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x46a7805e

    return v0
.end method
