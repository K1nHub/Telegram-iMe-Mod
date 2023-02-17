.class public Ldrinkless/org/ton/TonApi$BlocksShortTxId;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksShortTxId"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x1d15ef45


# instance fields
.field public account:[B

.field public hash:[B

.field public lt:J

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2371
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[BJ[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "account",
            "lt",
            "hash"
        }
    .end annotation

    .line 2374
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2375
    iput p1, p0, Ldrinkless/org/ton/TonApi$BlocksShortTxId;->mode:I

    .line 2376
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksShortTxId;->account:[B

    .line 2377
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$BlocksShortTxId;->lt:J

    .line 2378
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$BlocksShortTxId;->hash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x1d15ef45

    return v0
.end method
